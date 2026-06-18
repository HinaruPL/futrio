PRAGMA foreign_keys = ON;

WITH images(slug, image_url, image_alt, image_title, image_source_type, is_primary, sort_order) AS (
  VALUES
  ('labrador-retriever', '/images/breeds/placeholder-labrador-retriever.svg', 'Labrador Retriever - zdjęcie rasy', 'Labrador Retriever', 'placeholder', 1, 10),
  ('golden-retriever', '/images/breeds/placeholder-golden-retriever.svg', 'Golden Retriever - zdjęcie rasy', 'Golden Retriever', 'placeholder', 1, 10),
  ('owczarek-niemiecki', '/images/breeds/placeholder-owczarek-niemiecki.svg', 'Owczarek niemiecki - zdjęcie rasy', 'Owczarek niemiecki', 'placeholder', 1, 10),
  ('maine-coon', '/images/breeds/placeholder-maine-coon.svg', 'Maine Coon - zdjęcie rasy', 'Maine Coon', 'placeholder', 1, 10),
  ('kot-brytyjski-krotkowlosy', '/images/breeds/placeholder-kot-brytyjski-krotkowlosy.svg', 'Kot brytyjski krótkowłosy - zdjęcie rasy', 'Kot brytyjski krótkowłosy', 'placeholder', 1, 10)
)
INSERT INTO breed_images (
  breed_id,
  image_url,
  image_alt,
  image_title,
  image_source_type,
  is_primary,
  sort_order
)
SELECT
  b.id,
  i.image_url,
  i.image_alt,
  i.image_title,
  i.image_source_type,
  i.is_primary,
  i.sort_order
FROM images i
JOIN breeds b ON b.slug = i.slug
WHERE NOT EXISTS (
  SELECT 1
  FROM breed_images existing
  WHERE existing.breed_id = b.id
    AND existing.is_primary = 1
);

UPDATE affiliate_links
SET
  anchor_text = 'Sprawdź polecane produkty dla tej rasy',
  description = 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.',
  placement = 'feeding_section',
  disclosure = 'Link może mieć charakter afiliacyjny.',
  button_label = 'Zobacz polecane produkty'
WHERE breed_id IN (
  SELECT id
  FROM breeds
  WHERE slug IN (
    'labrador-retriever',
    'golden-retriever',
    'owczarek-niemiecki',
    'maine-coon',
    'kot-brytyjski-krotkowlosy'
  )
);
