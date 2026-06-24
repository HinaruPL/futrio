import breedsData from '../data/breeds.generated.json';

export type BreedContentSection = {
  section_key: string;
  heading: string;
  body: string;
  sort_order: number;
};

export type BreedImage = {
  image_url: string;
  image_alt: string;
  image_title: string | null;
  image_credit: string | null;
  image_source_type:
    | 'placeholder'
    | 'ai_generated'
    | 'own_photo'
    | 'licensed_stock'
    | 'public_domain'
    | 'other';
};

export type BreedAffiliateLink = {
  id: number;
  label: string;
  category: string;
  url: string;
  merchant: string | null;
  network: string | null;
  priority: number;
  is_active: number;
  anchor_text: string | null;
  description: string | null;
  placement: string | null;
  disclosure: string | null;
  button_label: string | null;
  image_url: string | null;
  valid_from: string | null;
  valid_to: string | null;
};

export type BreedFaq = {
  question: string;
  answer: string;
  sortOrder: number;
};

export type BreedRegistryRecognition = {
  organizationCode: string;
  organizationName: string;
  recognized: number;
  recognitionStatus: string | null;
  note: string | null;
  sourceUrl: string | null;
  verifiedAt: string | null;
};

export type Breed = {
  id: number;
  name: string;
  slug: string;
  species: 'dog' | 'cat' | 'other';
  short_description: string | null;
  long_description: string | null;
  weight_min_kg: number | null;
  weight_max_kg: number | null;
  height_min_cm: number | null;
  height_max_cm: number | null;
  life_expectancy_min_years: number | null;
  life_expectancy_max_years: number | null;
  activity_level: 'low' | 'medium' | 'high' | null;
  grooming_level: 'low' | 'medium' | 'high' | null;
  training_difficulty: 'easy' | 'medium' | 'hard' | null;
  family_friendly_score: number | null;
  apartment_score: number | null;
  daily_calories_min: number | null;
  daily_calories_max: number | null;
  meta_title: string | null;
  meta_description: string | null;
  h1: string | null;
  status: 'draft' | 'published' | 'archived';
  created_at: string;
  updated_at: string;
  contentSections: BreedContentSection[];
  image: BreedImage | null;
  affiliateLinks: BreedAffiliateLink[];
  faqs: BreedFaq[];
  registryRecognitions: BreedRegistryRecognition[];
};

type GeneratedBreedsData = {
  generatedAt: string;
  source: string;
  count: number;
  breeds: Breed[];
};

const mojibakeMap: Record<string, string> = {
  'Ä…': 'ą',
  'Ä‡': 'ć',
  'Ä™': 'ę',
  'Ĺ‚': 'ł',
  'Ĺ„': 'ń',
  'Ăł': 'ó',
  'Ĺ›': 'ś',
  'Ĺş': 'ź',
  'ĹĽ': 'ż',
  'Ä„': 'Ą',
  'Ä†': 'Ć',
  'Ä': 'Ę',
  'Ĺ': 'Ł',
  'Ĺƒ': 'Ń',
  'Ă“': 'Ó',
  'Ĺš': 'Ś',
  'Ĺą': 'Ź',
  'Ĺ»': 'Ż',
  'â€“': '-',
  'â€”': '-',
  'â€ž': '"',
  'â€ť': '"',
};

function normalizeText(value: string | null): string | null {
  if (!value) {
    return value;
  }

  return Object.entries(mojibakeMap).reduce(
    (text, [broken, fixed]) => text.replaceAll(broken, fixed),
    value
  );
}

function normalizeSection(section: BreedContentSection): BreedContentSection {
  return {
    ...section,
    heading: normalizeText(section.heading) ?? section.heading,
    body: normalizeText(section.body) ?? section.body,
  };
}

function normalizeImage(image: BreedImage | null): BreedImage | null {
  if (!image) {
    return null;
  }

  return {
    ...image,
    image_alt: normalizeText(image.image_alt) ?? image.image_alt,
    image_title: normalizeText(image.image_title),
    image_credit: normalizeText(image.image_credit),
  };
}

function normalizeAffiliateLink(link: BreedAffiliateLink): BreedAffiliateLink {
  return {
    ...link,
    label: normalizeText(link.label) ?? link.label,
    merchant: normalizeText(link.merchant),
    network: normalizeText(link.network),
    anchor_text: normalizeText(link.anchor_text),
    description: normalizeText(link.description),
    disclosure: normalizeText(link.disclosure),
    button_label: normalizeText(link.button_label),
  };
}

function normalizeFaq(faq: BreedFaq): BreedFaq {
  return {
    ...faq,
    question: normalizeText(faq.question) ?? faq.question,
    answer: normalizeText(faq.answer) ?? faq.answer,
  };
}

function normalizeRegistryRecognition(
  recognition: BreedRegistryRecognition
): BreedRegistryRecognition {
  return {
    ...recognition,
    organizationCode: normalizeText(recognition.organizationCode) ?? recognition.organizationCode,
    organizationName: normalizeText(recognition.organizationName) ?? recognition.organizationName,
    recognitionStatus: normalizeText(recognition.recognitionStatus),
    note: normalizeText(recognition.note),
    sourceUrl: normalizeText(recognition.sourceUrl),
    verifiedAt: normalizeText(recognition.verifiedAt),
  };
}

function normalizeBreed(breed: Breed): Breed {
  return {
    ...breed,
    name: normalizeText(breed.name) ?? breed.name,
    short_description: normalizeText(breed.short_description),
    long_description: normalizeText(breed.long_description),
    meta_title: normalizeText(breed.meta_title),
    meta_description: normalizeText(breed.meta_description),
    h1: normalizeText(breed.h1),
    contentSections: (breed.contentSections ?? []).map(normalizeSection),
    image: normalizeImage(breed.image ?? null),
    affiliateLinks: (breed.affiliateLinks ?? []).map(normalizeAffiliateLink),
    faqs: (breed.faqs ?? []).map(normalizeFaq),
    registryRecognitions: (breed.registryRecognitions ?? []).map(normalizeRegistryRecognition),
  };
}

const data = breedsData as GeneratedBreedsData;
const breeds = data.breeds
  .filter((breed) => breed.status === 'published' && Boolean(breed.slug))
  .map(normalizeBreed);

export function getAllBreeds(): Breed[] {
  return breeds;
}

export function getBreedBySlug(slug: string): Breed | undefined {
  return breeds.find((breed) => breed.slug === slug);
}

export function getBreedStaticPaths() {
  return breeds.map((breed) => ({
    params: {
      slug: breed.slug,
    },
    props: {
      breed,
    },
  }));
}

export function getOtherBreeds(currentSlug: string, limit = 3): Breed[] {
  return breeds.filter((breed) => breed.slug !== currentSlug).slice(0, limit);
}

export function getBreedIllustrationUrl(breed: Pick<Breed, 'slug' | 'species'>): string {
  if (breed.slug) {
    return `/breeds/${breed.slug}.svg`;
  }

  return breed.species === 'cat' ? '/breeds/default-cat.svg' : '/breeds/default-dog.svg';
}

const breedPhotoMap: Record<string, string> = {
  'akita-amerykanska': '/breeds/photos/akita-amerykanska.png',
  'akita-inu': '/breeds/photos/akita-inu.png',
  'alaskan-malamute': '/breeds/photos/alaskan-malamute.png',
  'airedale-terrier': '/breeds/photos/airedale-terrier.png',
  'american-staffordshire-terrier': '/breeds/photos/american-staffordshire-terrier.png',
  'australian-cattle-dog': '/breeds/photos/australian-cattle-dog.png',
  'australian-shepherd': '/breeds/photos/australian-shepherd.png',
  'basset-hound': '/breeds/photos/basset-hound.png',
  'bearded-collie': '/breeds/photos/bearded-collie.png',
  beagle: '/breeds/photos/beagle.png',
  beauceron: '/breeds/photos/beauceron.png',
  bengal: '/breeds/photos/bengal.png',
  bernardyn: '/breeds/photos/bernardyn.png',
  'bernenski-pies-pasterski': '/breeds/photos/bernenski-pies-pasterski.png',
  'bialy-owczarek-szwajcarski': '/breeds/photos/bialy-owczarek-szwajcarski.png',
  'bichon-frise': '/breeds/photos/bichon-frise.png',
  bloodhound: '/breeds/photos/bloodhound.png',
  bobtail: '/breeds/photos/bobtail.png',
  bokser: '/breeds/photos/bokser.png',
  'border-collie': '/breeds/photos/border-collie.png',
  'boston-terrier': '/breeds/photos/boston-terrier.png',
  'bouvier-des-flandres': '/breeds/photos/bouvier-des-flandres.png',
  briard: '/breeds/photos/briard.png',
  bullmastiff: '/breeds/photos/bullmastiff.png',
  'bull-terrier': '/breeds/photos/bull-terrier.png',
  'buldog-francuski': '/breeds/photos/buldog-francuski.png',
  'cane-corso': '/breeds/photos/cane-corso.png',
  'cairn-terrier': '/breeds/photos/cairn-terrier.png',
  'cavalier-king-charles-spaniel': '/breeds/photos/cavalier-king-charles-spaniel.png',
  basenji: '/breeds/photos/basenji.png',
  'cocker-spaniel-amerykanski': '/breeds/photos/cocker-spaniel-amerykanski.png',
  'charcik-wloski': '/breeds/photos/charcik-wloski.png',
  'chart-afganski': '/breeds/photos/chart-afganski.png',
  'chart-rosyjski-borzoj': '/breeds/photos/chart-rosyjski-borzoj.png',
  chihuahua: '/breeds/photos/chihuahua.png',
  'chow-chow': '/breeds/photos/chow-chow.png',
  'collie-dlugowlosy': '/breeds/photos/collie-dlugowlosy.png',
  'collie-krotkowlosy': '/breeds/photos/collie-krotkowlosy.png',
  'cocker-spaniel-angielski': '/breeds/photos/cocker-spaniel-angielski.png',
  'coton-de-tulear': '/breeds/photos/coton-de-tulear.png',
  dalmatynczyk: '/breeds/photos/dalmatynczyk.png',
  doberman: '/breeds/photos/doberman.png',
  'dog-niemiecki': '/breeds/photos/dog-niemiecki.png',
  eurasier: '/breeds/photos/eurasier.png',
  'flat-coated-retriever': '/breeds/photos/flat-coated-retriever.png',
  'finski-lapphund': '/breeds/photos/finski-lapphund.png',
  'fox-terrier-szorstkowlosy': '/breeds/photos/fox-terrier-szorstkowlosy.png',
  'golden-retriever': '/breeds/photos/golden-retriever.png',
  'gonczy-polski': '/breeds/photos/gonczy-polski.png',
  hawanczyk: '/breeds/photos/hawanczyk.png',
  'jack-russell-terrier': '/breeds/photos/jack-russell-terrier.png',
  jamnik: '/breeds/photos/jamnik.png',
  'kot-brytyjski-krotkowlosy': '/breeds/photos/kot-brytyjski-krotkowlosy.png',
  'kot-perski': '/breeds/photos/kot-perski.png',
  'kot-syberyjski': '/breeds/photos/kot-syberyjski.png',
  'lagotto-romagnolo': '/breeds/photos/lagotto-romagnolo.png',
  'labrador-retriever': '/breeds/photos/labrador-retriever.png',
  leonberger: '/breeds/photos/leonberger.png',
  'lhasa-apso': '/breeds/photos/lhasa-apso.png',
  'maine-coon': '/breeds/photos/maine-coon.png',
  maltanczyk: '/breeds/photos/maltanczyk.png',
  mops: '/breeds/photos/mops.png',
  'nova-scotia-duck-tolling-retriever': '/breeds/photos/nova-scotia-duck-tolling-retriever.png',
  'norwich-terrier': '/breeds/photos/norwich-terrier.png',
  nowofundland: '/breeds/photos/nowofundland.png',
  'owczarek-australijski-kelpie': '/breeds/photos/owczarek-australijski-kelpie.png',
  'owczarek-niemiecki': '/breeds/photos/owczarek-niemiecki.png',
  'owczarek-szetlandzki': '/breeds/photos/owczarek-szetlandzki.png',
  papillon: '/breeds/photos/papillon.png',
  pekinczyk: '/breeds/photos/pekinczyk.png',
  'petit-basset-griffon-vendeen': '/breeds/photos/petit-basset-griffon-vendeen.png',
  'pies-faraona': '/breeds/photos/pies-faraona.png',
  pointer: '/breeds/photos/pointer.png',
  pomeranian: '/breeds/photos/pomeranian.png',
  'portugalski-pies-wodny': '/breeds/photos/portugalski-pies-wodny.png',
  pudel: '/breeds/photos/pudel.png',
  ragdoll: '/breeds/photos/ragdoll.png',
  'rhodesian-ridgeback': '/breeds/photos/rhodesian-ridgeback.png',
  rottweiler: '/breeds/photos/rottweiler.png',
  saluki: '/breeds/photos/saluki.png',
  samoyed: '/breeds/photos/samoyed.png',
  schipperke: '/breeds/photos/schipperke.png',
  'scottish-terrier': '/breeds/photos/scottish-terrier.png',
  'seter-angielski': '/breeds/photos/seter-angielski.png',
  'seter-irlandzki': '/breeds/photos/seter-irlandzki.png',
  'seter-szkocki-gordon': '/breeds/photos/seter-szkocki-gordon.png',
  sfinks: '/breeds/photos/sfinks.png',
  'shar-pei': '/breeds/photos/shar-pei.png',
  'shiba-inu': '/breeds/photos/shiba-inu.png',
  'shih-tzu': '/breeds/photos/shih-tzu.png',
  'siberian-husky': '/breeds/photos/siberian-husky.png',
  'springer-spaniel-angielski': '/breeds/photos/springer-spaniel-angielski.png',
  'springer-spaniel-walijski': '/breeds/photos/springer-spaniel-walijski.png',
  'staffordshire-bull-terrier': '/breeds/photos/staffordshire-bull-terrier.png',
  'szpic-finski': '/breeds/photos/szpic-finski.png',
  'szpic-japonski': '/breeds/photos/szpic-japonski.png',
  'sznaucer-miniaturowy': '/breeds/photos/sznaucer-miniaturowy.png',
  vizsla: '/breeds/photos/vizsla.png',
  'welsh-corgi-cardigan': '/breeds/photos/welsh-corgi-cardigan.png',
  'welsh-corgi-pembroke': '/breeds/photos/welsh-corgi-pembroke.png',
  'west-highland-white-terrier': '/breeds/photos/west-highland-white-terrier.png',
  'wilczarz-irlandzki': '/breeds/photos/wilczarz-irlandzki.png',
  whippet: '/breeds/photos/whippet.png',
  'wyzel-weimarski': '/breeds/photos/wyzel-weimarski.png',
  'kuvasz': '/breeds/photos/kuvasz.png',
  'hovawart': '/breeds/photos/hovawart.png',
  'duzy-szwajcarski-pies-pasterski': '/breeds/photos/duzy-szwajcarski-pies-pasterski.png',
  'entlebucher': '/breeds/photos/entlebucher.png',
  'appenzeller': '/breeds/photos/appenzeller.png',
  'mastif-angielski': '/breeds/photos/mastif-angielski.png',
  'mastino-napoletano': '/breeds/photos/mastino-napoletano.png',
  'mastif-tybetanski': '/breeds/photos/mastif-tybetanski.png',
  'pinczer-niemiecki': '/breeds/photos/pinczer-niemiecki.png',
  'affenpinscher': '/breeds/photos/affenpinscher.png',
  'sznaucer-olbrzym': '/breeds/photos/sznaucer-olbrzym.png',
  'sznaucer-sredni': '/breeds/photos/sznaucer-sredni.png',
  'norfolk-terrier': '/breeds/photos/norfolk-terrier.png',
  'lakeland-terrier': '/breeds/photos/lakeland-terrier.png',
  'irish-terrier': '/breeds/photos/irish-terrier.png',
  'kerry-blue-terrier': '/breeds/photos/kerry-blue-terrier.png',
  'welsh-terrier': '/breeds/photos/welsh-terrier.png',
  'australian-terrier': '/breeds/photos/australian-terrier.png',
  'bedlington-terrier': '/breeds/photos/bedlington-terrier.png',
  'dandie-dinmont-terrier': '/breeds/photos/dandie-dinmont-terrier.png',
  'border-terrier': '/breeds/photos/border-terrier.png',
  'terier-czeski': '/breeds/photos/terier-czeski.png',
  'sealyham-terrier': '/breeds/photos/sealyham-terrier.png',
  'skye-terrier': '/breeds/photos/skye-terrier.png',
  'parson-russell-terrier': '/breeds/photos/parson-russell-terrier.png',
  'yorkshire-terrier': '/breeds/photos/yorkshire-terrier.png',
};

export function getBreedPhotoUrl(breed: Pick<Breed, 'slug'>): string | null {
  return breedPhotoMap[breed.slug] ?? null;
}

export function getSectionByKey(
  breed: Breed,
  sectionKey: string
): BreedContentSection | undefined {
  return breed.contentSections.find((section) => section.section_key === sectionKey);
}

export function getBreedFaqs(breed: Breed): BreedFaq[] {
  return [...(breed.faqs ?? [])].sort((first, second) => first.sortOrder - second.sortOrder);
}

export function getVisibleContentSections(breed: Breed): BreedContentSection[] {
  const hasStructuredFaq = getBreedFaqs(breed).length > 0;

  return [...(breed.contentSections ?? [])]
    .filter((section) => !(hasStructuredFaq && section.section_key === 'faq'))
    .sort((first, second) => first.sort_order - second.sort_order);
}

export function getBreedRecognitionStatus(
  breed: Breed
): 'recognized' | 'unrecognized' | 'needs_verification' | 'mixed' | 'none' {
  const recognitions = breed.registryRecognitions ?? [];

  if (recognitions.length === 0) {
    return 'none';
  }

  if (recognitions.every((recognition) => recognition.recognitionStatus === 'needs_verification')) {
    return 'needs_verification';
  }

  if (recognitions.every((recognition) => recognition.recognized === 1)) {
    return 'recognized';
  }

  if (recognitions.every((recognition) => recognition.recognized !== 1)) {
    return 'unrecognized';
  }

  return 'mixed';
}

export function formatSpecies(species: Breed['species'] | null | undefined): string {
  const labels: Record<Breed['species'], string> = {
    dog: 'pies',
    cat: 'kot',
    other: 'inne',
  };

  return species ? labels[species] : 'brak danych';
}

export function formatActivityLevel(
  level: Breed['activity_level'] | null | undefined
): string {
  const labels: Record<NonNullable<Breed['activity_level']>, string> = {
    low: 'niska',
    medium: 'średnia',
    high: 'wysoka',
  };

  return level ? labels[level] : 'brak danych';
}

export function formatGroomingLevel(
  level: Breed['grooming_level'] | null | undefined
): string {
  const labels: Record<NonNullable<Breed['grooming_level']>, string> = {
    low: 'niska',
    medium: 'średnia',
    high: 'wysoka',
  };

  return level ? labels[level] : 'brak danych';
}

export function formatTrainingDifficulty(
  difficulty: Breed['training_difficulty'] | null | undefined
): string {
  const labels: Record<NonNullable<Breed['training_difficulty']>, string> = {
    easy: 'łatwa',
    medium: 'średnia',
    hard: 'trudna',
  };

  return difficulty ? labels[difficulty] : 'brak danych';
}

export function formatRange(
  min: number | null | undefined,
  max: number | null | undefined,
  unit = ''
): string {
  const suffix = unit ? ` ${unit}` : '';

  if (typeof min === 'number' && typeof max === 'number') {
    return min === max ? `${min}${suffix}` : `${min}-${max}${suffix}`;
  }

  if (typeof min === 'number') {
    return `od ${min}${suffix}`;
  }

  if (typeof max === 'number') {
    return `do ${max}${suffix}`;
  }

  return 'brak danych';
}

export function formatScore(score: number | null | undefined): string {
  return typeof score === 'number' ? `${score}/5` : 'brak danych';
}
