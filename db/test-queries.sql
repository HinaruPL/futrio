PRAGMA foreign_keys = ON;

SELECT 'breeds_count' AS test_name, COUNT(*) AS result FROM breeds;
SELECT 'published_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE status = 'published';
SELECT 'dog_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'dog';
SELECT 'cat_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'cat';
SELECT 'breed_content_sections_count' AS test_name, COUNT(*) AS result FROM breed_content_sections;
SELECT 'history_sections_count' AS test_name, COUNT(*) AS result FROM breed_content_sections WHERE section_key = 'history';
SELECT 'breed_faqs_count' AS test_name, COUNT(*) AS result FROM breed_faqs;
SELECT 'breed_registry_recognitions_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions;
SELECT 'calculator_profiles_count' AS test_name, COUNT(*) AS result FROM calculator_profiles;
SELECT 'affiliate_links_count' AS test_name, COUNT(*) AS result FROM affiliate_links;
SELECT 'breed_images_primary_count' AS test_name, COUNT(*) AS result FROM breed_images WHERE is_primary = 1;

SELECT species, COUNT(*) AS result FROM breeds GROUP BY species ORDER BY species;

SELECT b.slug, b.name
FROM breeds b
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id AND bcs.section_key = 'history'
WHERE bcs.id IS NULL
ORDER BY b.name;

SELECT b.slug, b.name, COUNT(bf.id) AS faq_count
FROM breeds b
LEFT JOIN breed_faqs bf ON bf.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(bf.id) < 5
ORDER BY b.name;

SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM breeds b
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(brr.id) = 0
ORDER BY b.name;

SELECT b.slug, b.name, COUNT(bcs.id) AS sections_count
FROM breeds b
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id
GROUP BY b.id, b.slug, b.name
ORDER BY b.name;

SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM breeds b
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
ORDER BY b.name;

SELECT slug, COUNT(*) AS duplicates FROM breeds GROUP BY slug HAVING COUNT(*) > 1;
SELECT breed_id, question, COUNT(*) AS duplicates FROM breed_faqs GROUP BY breed_id, question HAVING COUNT(*) > 1;
SELECT breed_id, organization_code, COUNT(*) AS duplicates FROM breed_registry_recognitions GROUP BY breed_id, organization_code HAVING COUNT(*) > 1;

SELECT id, name, slug, species, status FROM breeds WHERE status = 'published' ORDER BY name;

SELECT b.name AS breed_name, bcs.section_key, bcs.heading, bcs.body, bcs.sort_order
FROM breed_content_sections bcs
JOIN breeds b ON b.id = bcs.breed_id
WHERE b.slug IN ('border-collie', 'ragdoll')
  AND bcs.section_key = 'history'
ORDER BY b.slug, bcs.sort_order ASC;

SELECT b.name AS breed_name, bf.question, bf.answer, bf.sort_order
FROM breed_faqs bf
JOIN breeds b ON b.id = bf.breed_id
WHERE b.slug IN ('border-collie', 'ragdoll')
ORDER BY b.slug, bf.sort_order ASC;

SELECT
  b.name AS breed_name,
  brr.organization_code,
  brr.organization_name,
  brr.recognized,
  brr.recognition_status,
  brr.note,
  brr.source_url,
  brr.verified_at
FROM breed_registry_recognitions brr
JOIN breeds b ON b.id = brr.breed_id
WHERE b.slug IN ('border-collie', 'ragdoll')
ORDER BY b.slug, brr.organization_code;

SELECT b.name AS breed_name, h.name AS health_condition, bhc.risk_level, bhc.note
FROM breed_health_conditions bhc
JOIN breeds b ON b.id = bhc.breed_id
JOIN health_conditions h ON h.id = bhc.condition_id
WHERE b.slug IN ('border-collie', 'ragdoll')
ORDER BY b.slug, h.name;

SELECT b.name AS breed_name, cp.base_activity_multiplier, cp.puppy_multiplier, cp.senior_multiplier, cp.monthly_food_cost_min_pln, cp.monthly_food_cost_max_pln, cp.grooming_cost_min_pln, cp.grooming_cost_max_pln, cp.vet_cost_monthly_estimate_pln, cp.accessories_monthly_estimate_pln, cp.notes
FROM calculator_profiles cp
JOIN breeds b ON b.id = cp.breed_id
WHERE b.slug IN ('border-collie', 'ragdoll')
ORDER BY b.slug;
