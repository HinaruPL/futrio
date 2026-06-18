PRAGMA foreign_keys = ON;

SELECT 'breeds_count' AS test_name, COUNT(*) AS result FROM breeds;

SELECT 'health_conditions_count' AS test_name, COUNT(*) AS result FROM health_conditions;

SELECT 'breed_health_conditions_count' AS test_name, COUNT(*) AS result FROM breed_health_conditions;

SELECT 'calculator_profiles_count' AS test_name, COUNT(*) AS result FROM calculator_profiles;

SELECT 'affiliate_links_count' AS test_name, COUNT(*) AS result FROM affiliate_links;

SELECT 'content_blocks_count' AS test_name, COUNT(*) AS result FROM content_blocks;

SELECT 'crossbreeds_count' AS test_name, COUNT(*) AS result FROM crossbreeds;

SELECT
  id,
  name,
  slug,
  species,
  status
FROM breeds
WHERE status = 'published'
ORDER BY name;

SELECT
  id,
  name,
  slug,
  species,
  short_description,
  weight_min_kg,
  weight_max_kg,
  daily_calories_min,
  daily_calories_max
FROM breeds
WHERE slug = 'labrador-retriever';

SELECT
  b.name AS breed_name,
  h.name AS health_condition,
  bhc.risk_level,
  bhc.note
FROM breed_health_conditions bhc
JOIN breeds b ON b.id = bhc.breed_id
JOIN health_conditions h ON h.id = bhc.condition_id
WHERE b.slug = 'labrador-retriever'
ORDER BY h.name;

SELECT
  b.name AS breed_name,
  al.label,
  al.category,
  al.url,
  al.merchant,
  al.network,
  al.priority
FROM affiliate_links al
JOIN breeds b ON b.id = al.breed_id
WHERE b.slug = 'labrador-retriever'
  AND al.is_active = 1
ORDER BY al.priority ASC;

SELECT
  b.name AS breed_name,
  cp.base_activity_multiplier,
  cp.puppy_multiplier,
  cp.senior_multiplier,
  cp.monthly_food_cost_min_pln,
  cp.monthly_food_cost_max_pln,
  cp.grooming_cost_min_pln,
  cp.grooming_cost_max_pln,
  cp.vet_cost_monthly_estimate_pln,
  cp.accessories_monthly_estimate_pln
FROM calculator_profiles cp
JOIN breeds b ON b.id = cp.breed_id
WHERE b.slug = 'labrador-retriever';

SELECT
  b.name AS breed_name,
  cb.block_key,
  cb.heading,
  cb.body,
  cb.sort_order
FROM content_blocks cb
JOIN breeds b ON b.id = cb.entity_id
WHERE cb.entity_type = 'breed'
  AND b.slug = 'labrador-retriever'
ORDER BY cb.sort_order ASC;

SELECT
  c.name,
  c.slug,
  a.name AS breed_a,
  b.name AS breed_b,
  c.editorial_status
FROM crossbreeds c
JOIN breeds a ON a.id = c.breed_a_id
JOIN breeds b ON b.id = c.breed_b_id;

SELECT 'breed_content_sections_count' AS test_name, COUNT(*) AS result FROM breed_content_sections;

SELECT
  b.name AS breed_name,
  COUNT(*) AS sections_count
FROM breed_content_sections bcs
JOIN breeds b ON b.id = bcs.breed_id
GROUP BY b.id, b.name
ORDER BY b.name;

SELECT
  b.name AS breed_name,
  bcs.section_key,
  bcs.heading,
  bcs.body,
  bcs.sort_order
FROM breed_content_sections bcs
JOIN breeds b ON b.id = bcs.breed_id
WHERE b.slug = 'labrador-retriever'
ORDER BY bcs.sort_order ASC;

SELECT 'breed_images_count' AS test_name, COUNT(*) AS result FROM breed_images;

SELECT 'breed_images_primary_count' AS test_name, COUNT(*) AS result
FROM breed_images
WHERE is_primary = 1;

SELECT
  b.name AS breed_name,
  bi.image_url,
  bi.image_alt,
  bi.image_title,
  bi.image_credit,
  bi.image_source_type
FROM breed_images bi
JOIN breeds b ON b.id = bi.breed_id
WHERE b.slug = 'labrador-retriever'
  AND bi.is_primary = 1
ORDER BY bi.sort_order ASC
LIMIT 1;

SELECT
  b.name AS breed_name,
  al.label,
  al.category,
  al.url,
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
WHERE b.slug = 'labrador-retriever'
  AND al.is_active = 1
ORDER BY al.priority ASC;
