PRAGMA foreign_keys = ON;

SELECT 'breeds_count' AS test_name, COUNT(*) AS result FROM breeds;
SELECT 'published_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE status = 'published';
SELECT 'dog_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'dog';
SELECT 'cat_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'cat';
SELECT 'health_conditions_count' AS test_name, COUNT(*) AS result FROM health_conditions;
SELECT 'breed_health_conditions_count' AS test_name, COUNT(*) AS result FROM breed_health_conditions;
SELECT 'calculator_profiles_count' AS test_name, COUNT(*) AS result FROM calculator_profiles;
SELECT 'affiliate_links_count' AS test_name, COUNT(*) AS result FROM affiliate_links;
SELECT 'active_affiliate_links_count' AS test_name, COUNT(*) AS result FROM affiliate_links WHERE is_active = 1;
SELECT 'content_blocks_count' AS test_name, COUNT(*) AS result FROM content_blocks;
SELECT 'crossbreeds_count' AS test_name, COUNT(*) AS result FROM crossbreeds;
SELECT 'breed_content_sections_count' AS test_name, COUNT(*) AS result FROM breed_content_sections;
SELECT 'breed_images_count' AS test_name, COUNT(*) AS result FROM breed_images;
SELECT 'breed_images_primary_count' AS test_name, COUNT(*) AS result FROM breed_images WHERE is_primary = 1;

SELECT species, COUNT(*) AS result FROM breeds GROUP BY species ORDER BY species;

SELECT b.slug, b.name, COUNT(bcs.id) AS sections_count
FROM breeds b
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id
GROUP BY b.id, b.slug, b.name
ORDER BY b.name;

SELECT b.slug, b.name, COUNT(bcs.id) AS sections_count
FROM breeds b
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(bcs.id) <> 12
ORDER BY b.name;

SELECT b.slug, b.name FROM breeds b LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id WHERE cp.id IS NULL ORDER BY b.name;
SELECT b.slug, b.name FROM breeds b LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1 WHERE bi.id IS NULL ORDER BY b.name;
SELECT b.slug, b.name FROM breeds b LEFT JOIN affiliate_links al ON al.breed_id = b.id AND al.is_active = 1 WHERE al.id IS NULL ORDER BY b.name;
SELECT slug, COUNT(*) AS duplicates FROM breeds GROUP BY slug HAVING COUNT(*) > 1;

SELECT id, name, slug, species, status FROM breeds WHERE status = 'published' ORDER BY name;

SELECT id, name, slug, species, short_description, weight_min_kg, weight_max_kg, daily_calories_min, daily_calories_max
FROM breeds
WHERE slug IN ('border-collie', 'buldog-francuski', 'siberian-husky', 'ragdoll', 'kot-perski')
ORDER BY slug;

SELECT b.name AS breed_name, bcs.section_key, bcs.heading, bcs.body, bcs.sort_order
FROM breed_content_sections bcs
JOIN breeds b ON b.id = bcs.breed_id
WHERE b.slug IN ('border-collie', 'buldog-francuski', 'siberian-husky', 'ragdoll', 'kot-perski')
ORDER BY b.slug, bcs.sort_order ASC;

SELECT b.name AS breed_name, h.name AS health_condition, bhc.risk_level, bhc.note
FROM breed_health_conditions bhc
JOIN breeds b ON b.id = bhc.breed_id
JOIN health_conditions h ON h.id = bhc.condition_id
WHERE b.slug IN ('border-collie', 'buldog-francuski', 'siberian-husky', 'ragdoll', 'kot-perski')
ORDER BY b.slug, h.name;

SELECT b.name AS breed_name, cp.base_activity_multiplier, cp.puppy_multiplier, cp.senior_multiplier, cp.monthly_food_cost_min_pln, cp.monthly_food_cost_max_pln, cp.grooming_cost_min_pln, cp.grooming_cost_max_pln, cp.vet_cost_monthly_estimate_pln, cp.accessories_monthly_estimate_pln, cp.notes
FROM calculator_profiles cp
JOIN breeds b ON b.id = cp.breed_id
WHERE b.slug IN ('border-collie', 'buldog-francuski', 'siberian-husky', 'ragdoll', 'kot-perski')
ORDER BY b.slug;

SELECT b.name AS breed_name, bi.image_url, bi.image_alt, bi.image_title, bi.image_source_type
FROM breed_images bi
JOIN breeds b ON b.id = bi.breed_id
WHERE b.slug IN ('border-collie', 'buldog-francuski', 'siberian-husky', 'ragdoll', 'kot-perski') AND bi.is_primary = 1
ORDER BY b.slug;

SELECT b.name AS breed_name, al.label, al.category, al.url, al.anchor_text, al.description, al.placement, al.disclosure, al.button_label
FROM affiliate_links al
JOIN breeds b ON b.id = al.breed_id
WHERE b.slug IN ('border-collie', 'buldog-francuski', 'siberian-husky', 'ragdoll', 'kot-perski') AND al.is_active = 1
ORDER BY b.slug, al.priority ASC;
