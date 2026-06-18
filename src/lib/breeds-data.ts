import breedsData from '../data/breeds.generated.json';

export type BreedContentSection = {
  section_key: string;
  heading: string;
  body: string;
  sort_order: number;
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
};

type GeneratedBreedsData = {
  generatedAt: string;
  source: string;
  count: number;
  breeds: Breed[];
};

const mojibakeMap: Record<string, string> = {
  'Ă„â€¦': 'ą',
  'Ă„â€ˇ': 'ć',
  'Ă„â„˘': 'ę',
  'Äąâ€š': 'ł',
  'Äąâ€ž': 'ń',
  'Ä‚Ĺ‚': 'ó',
  'Äąâ€ş': 'ś',
  'ÄąĹź': 'ź',
  'ÄąÄ˝': 'ż',
  'Ă„â€ž': 'Ą',
  'Ă„â€ ': 'Ć',
  'Ă„Â': 'Ę',
  'ÄąÂ': 'Ł',
  'ÄąĆ’': 'Ń',
  'Ä‚â€ś': 'Ó',
  'ÄąĹˇ': 'Ś',
  'ÄąÄ…': 'Ź',
  'ÄąÂ»': 'Ż',
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
  'Ă˘â‚¬â€ś': '-',
  'Ă˘â‚¬â€ť': '-',
  'Ă˘â‚¬Ĺľ': '"',
  'Ă˘â‚¬ĹĄ': '"',
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
