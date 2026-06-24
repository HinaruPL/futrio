import { spawnSync } from 'node:child_process';
import { existsSync, mkdirSync, writeFileSync } from 'node:fs';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const projectRoot = resolve(__dirname, '..');
const outputPath = resolve(projectRoot, 'src/data/breeds.generated.json');

const requiredEnv = ['CLOUDFLARE_API_TOKEN', 'CLOUDFLARE_ACCOUNT_ID'];
const missingEnv = requiredEnv.filter((name) => !process.env[name]);

if (missingEnv.length > 0) {
  console.error(
    `Brakuje wymaganych zmiennych środowiskowych: ${missingEnv.join(', ')}.`
  );
  console.error('Ustaw je w PowerShell przed uruchomieniem skryptu.');
  process.exit(1);
}

const breedsQuery = `SELECT
  id,
  name,
  slug,
  species,
  short_description,
  long_description,
  weight_min_kg,
  weight_max_kg,
  height_min_cm,
  height_max_cm,
  life_expectancy_min_years,
  life_expectancy_max_years,
  activity_level,
  grooming_level,
  training_difficulty,
  family_friendly_score,
  apartment_score,
  daily_calories_min,
  daily_calories_max,
  meta_title,
  meta_description,
  h1,
  status,
  created_at,
  updated_at
FROM breeds
WHERE status = 'published'
ORDER BY name ASC`;

const sectionsQuery = `SELECT
  bcs.breed_id,
  bcs.section_key,
  bcs.heading,
  bcs.body,
  bcs.sort_order
FROM breed_content_sections bcs
JOIN breeds b ON b.id = bcs.breed_id
WHERE b.status = 'published'
ORDER BY bcs.breed_id ASC, bcs.sort_order ASC`;

const imagesQuery = `SELECT
  selected.breed_id,
  selected.image_url,
  selected.image_alt,
  selected.image_title,
  selected.image_credit,
  selected.image_source_type
FROM (
  SELECT
    bi.*,
    ROW_NUMBER() OVER (
      PARTITION BY bi.breed_id
      ORDER BY bi.is_primary DESC, bi.sort_order ASC, bi.id ASC
    ) AS row_number
  FROM breed_images bi
) selected
JOIN breeds b ON b.id = selected.breed_id
WHERE b.status = 'published'
  AND selected.row_number = 1
ORDER BY selected.breed_id ASC`;

const affiliateLinksQuery = `SELECT
  al.id,
  al.breed_id,
  al.label,
  al.category,
  al.url,
  al.merchant,
  al.network,
  al.priority,
  al.is_active,
  al.anchor_text,
  al.description,
  al.placement,
  al.disclosure,
  al.button_label,
  al.image_url,
  al.valid_from,
  al.valid_to
FROM affiliate_links al
JOIN breeds b ON b.id = al.breed_id
WHERE b.status = 'published'
  AND al.is_active = 1
ORDER BY al.breed_id ASC, al.priority ASC`;

const faqsQuery = `SELECT
  bf.breed_id,
  bf.question,
  bf.answer,
  bf.sort_order
FROM breed_faqs bf
JOIN breeds b ON b.id = bf.breed_id
WHERE b.status = 'published'
ORDER BY bf.breed_id ASC, bf.sort_order ASC`;

const registryRecognitionsQuery = `SELECT
  brr.breed_id,
  brr.organization_code,
  brr.organization_name,
  brr.recognized,
  brr.recognition_status,
  brr.note,
  brr.source_url,
  brr.verified_at
FROM breed_registry_recognitions brr
JOIN breeds b ON b.id = brr.breed_id
WHERE b.status = 'published'
ORDER BY brr.breed_id ASC, brr.organization_code ASC`;

function compactQuery(query) {
  return query.replace(/\s+/g, ' ').trim();
}

function findPnpmCommand() {
  const commandName = process.platform === 'win32' ? 'pnpm.cmd' : 'pnpm';
  const pathEntries = (process.env.PATH ?? '').split(
    process.platform === 'win32' ? ';' : ':'
  );

  for (const pathEntry of pathEntries) {
    const commandPath = resolve(pathEntry, commandName);

    if (existsSync(commandPath)) {
      return commandPath;
    }
  }

  return commandName;
}

function getPnpmInvocation() {
  const pnpmCommand = findPnpmCommand();

  if (process.platform === 'win32' && pnpmCommand.endsWith('pnpm.cmd')) {
    const pnpmScripts = [
      resolve(dirname(pnpmCommand), 'pnpm.cjs'),
      resolve(dirname(pnpmCommand), 'pnpm.mjs'),
      resolve(dirname(pnpmCommand), '../node/node_modules/pnpm/bin/pnpm.cjs'),
      resolve(dirname(pnpmCommand), '../node/node_modules/pnpm/bin/pnpm.mjs'),
      resolve(dirname(process.execPath), '../node_modules/pnpm/bin/pnpm.cjs'),
      resolve(dirname(process.execPath), '../node_modules/pnpm/bin/pnpm.mjs'),
    ];

    const pnpmScript = pnpmScripts.find((scriptPath) => existsSync(scriptPath));

    if (pnpmScript) {
      return {
        command: process.execPath,
        argsPrefix: [pnpmScript],
      };
    }

    return {
      command: pnpmCommand,
      argsPrefix: [],
      shell: true,
    };
  }

  return {
    command: pnpmCommand,
    argsPrefix: [],
  };
}

function runWrangler(query, useJsonFlag) {
  const pnpm = getPnpmInvocation();
  const args = [
    ...pnpm.argsPrefix,
    'dlx',
    'wrangler',
    'd1',
    'execute',
    'futrio-db',
    '--remote',
    '--command',
    compactQuery(query),
  ];

  if (useJsonFlag) {
    args.push('--json');
  }

  return spawnSync(pnpm.command, args, {
    cwd: projectRoot,
    encoding: 'utf8',
    env: process.env,
    shell: pnpm.shell ?? false,
    maxBuffer: 50 * 1024 * 1024,
  });
}

function parseJsonFromOutput(output) {
  const trimmedOutput = output.trim();

  try {
    return JSON.parse(trimmedOutput);
  } catch {
    // Wrangler may print logs before the JSON payload.
  }

  for (let index = 0; index < trimmedOutput.length; index += 1) {
    const character = trimmedOutput[index];

    if (character !== '[' && character !== '{') {
      continue;
    }

    try {
      return JSON.parse(trimmedOutput.slice(index));
    } catch {
      // Keep scanning until we find the JSON payload.
    }
  }

  throw new Error('Nie udało się odczytać JSON-a z outputu Wranglera.');
}

function extractRows(parsedOutput) {
  if (Array.isArray(parsedOutput)) {
    return parsedOutput[0]?.results ?? [];
  }

  if (Array.isArray(parsedOutput?.results)) {
    return parsedOutput.results;
  }

  throw new Error('Output Wranglera nie zawiera tablicy results.');
}

function executeQuery(query) {
  let wranglerResult = runWrangler(query, true);

  if (wranglerResult.status !== 0) {
    wranglerResult = runWrangler(query, false);
  }

  if (wranglerResult.status !== 0) {
    const errorOutput =
      wranglerResult.stderr ??
      wranglerResult.stdout ??
      wranglerResult.error?.message ??
      'Nie udało się uruchomić Wranglera.';

    process.stderr.write(errorOutput);
    process.exit(wranglerResult.status ?? 1);
  }

  return extractRows(parseJsonFromOutput(wranglerResult.stdout));
}

const breeds = executeQuery(breedsQuery);
const sections = executeQuery(sectionsQuery);
const images = executeQuery(imagesQuery);
const affiliateLinks = executeQuery(affiliateLinksQuery);
const faqs = executeQuery(faqsQuery);
const registryRecognitions = executeQuery(registryRecognitionsQuery);
const sectionsByBreedId = new Map();
const imageByBreedId = new Map();
const affiliateLinksByBreedId = new Map();
const faqsByBreedId = new Map();
const registryRecognitionsByBreedId = new Map();

for (const section of sections) {
  const breedSections = sectionsByBreedId.get(section.breed_id) ?? [];
  breedSections.push({
    section_key: section.section_key,
    heading: section.heading,
    body: section.body,
    sort_order: section.sort_order,
  });
  sectionsByBreedId.set(section.breed_id, breedSections);
}

for (const image of images) {
  imageByBreedId.set(image.breed_id, {
    image_url: image.image_url,
    image_alt: image.image_alt,
    image_title: image.image_title,
    image_credit: image.image_credit,
    image_source_type: image.image_source_type,
  });
}

for (const link of affiliateLinks) {
  const breedLinks = affiliateLinksByBreedId.get(link.breed_id) ?? [];
  breedLinks.push({
    id: link.id,
    label: link.label,
    category: link.category,
    url: link.url,
    merchant: link.merchant,
    network: link.network,
    priority: link.priority,
    is_active: link.is_active,
    anchor_text: link.anchor_text,
    description: link.description,
    placement: link.placement,
    disclosure: link.disclosure,
    button_label: link.button_label,
    image_url: link.image_url,
    valid_from: link.valid_from,
    valid_to: link.valid_to,
  });
  affiliateLinksByBreedId.set(link.breed_id, breedLinks);
}

for (const faq of faqs) {
  const breedFaqs = faqsByBreedId.get(faq.breed_id) ?? [];
  breedFaqs.push({
    question: faq.question,
    answer: faq.answer,
    sortOrder: faq.sort_order,
  });
  faqsByBreedId.set(faq.breed_id, breedFaqs);
}

for (const recognition of registryRecognitions) {
  const breedRecognitions = registryRecognitionsByBreedId.get(recognition.breed_id) ?? [];
  breedRecognitions.push({
    organizationCode: recognition.organization_code,
    organizationName: recognition.organization_name,
    recognized: recognition.recognized,
    recognitionStatus: recognition.recognition_status,
    note: recognition.note,
    sourceUrl: recognition.source_url,
    verifiedAt: recognition.verified_at,
  });
  registryRecognitionsByBreedId.set(recognition.breed_id, breedRecognitions);
}

const breedsWithSections = breeds.map((breed) => ({
  ...breed,
  contentSections: sectionsByBreedId.get(breed.id) ?? [],
  image: imageByBreedId.get(breed.id) ?? null,
  affiliateLinks: affiliateLinksByBreedId.get(breed.id) ?? [],
  faqs: faqsByBreedId.get(breed.id) ?? [],
  registryRecognitions: registryRecognitionsByBreedId.get(breed.id) ?? [],
}));

mkdirSync(dirname(outputPath), { recursive: true });
writeFileSync(
  outputPath,
  `${JSON.stringify(
    {
      generatedAt: new Date().toISOString(),
      source: 'cloudflare-d1',
      count: breedsWithSections.length,
      breeds: breedsWithSections,
    },
    null,
    2
  )}\n`,
  'utf8'
);

console.log(`Zapisano ${breedsWithSections.length} ras do src/data/breeds.generated.json.`);
