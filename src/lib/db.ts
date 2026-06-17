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
};

export async function getPublishedBreeds(db: D1Database): Promise<Breed[]> {
  const result = await db
    .prepare(
      `SELECT
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
      ORDER BY name ASC`
    )
    .all<Breed>();

  return result.results;
}

export async function getBreedBySlug(
  db: D1Database,
  slug: string
): Promise<Breed | null> {
  const result = await db
    .prepare(
      `SELECT
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
      WHERE slug = ?
        AND status = 'published'
      LIMIT 1`
    )
    .bind(slug)
    .first<Breed>();

  return result ?? null;
}
