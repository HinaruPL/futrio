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

export function getSectionByKey(
  breed: Breed,
  sectionKey: string
): BreedContentSection | undefined {
  return breed.contentSections.find((section) => section.section_key === sectionKey);
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
