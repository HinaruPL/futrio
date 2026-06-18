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
    const pnpmScript = resolve(
      dirname(pnpmCommand),
      '../node/node_modules/pnpm/bin/pnpm.mjs'
    );

    if (existsSync(pnpmScript)) {
      return {
        command: process.execPath,
        argsPrefix: [pnpmScript],
      };
    }
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
const sectionsByBreedId = new Map();

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

const breedsWithSections = breeds.map((breed) => ({
  ...breed,
  contentSections: sectionsByBreedId.get(breed.id) ?? [],
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
