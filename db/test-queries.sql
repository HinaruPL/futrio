PRAGMA foreign_keys = ON;

SELECT 'breeds_count' AS test_name, COUNT(*) AS result FROM breeds;
SELECT 'published_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE status = 'published';
SELECT 'dog_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'dog';
SELECT 'cat_breeds_count' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'cat';
SELECT 'breed_content_sections_count' AS test_name, COUNT(*) AS result FROM breed_content_sections;
SELECT 'history_sections_count' AS test_name, COUNT(*) AS result FROM breed_content_sections WHERE section_key = 'history';
SELECT 'breed_faqs_count' AS test_name, COUNT(*) AS result FROM breed_faqs;
SELECT 'breed_registry_recognitions_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions;
SELECT 'recognition_status_recognized_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions WHERE recognition_status = 'recognized';
SELECT 'recognition_status_not_recognized_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions WHERE recognition_status = 'not_recognized';
SELECT 'recognition_status_provisional_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions WHERE recognition_status = 'provisional';
SELECT 'recognition_status_needs_verification_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions WHERE recognition_status = 'needs_verification';
SELECT 'recognition_missing_source_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions WHERE recognition_status IN ('recognized', 'not_recognized', 'provisional') AND (source_url IS NULL OR source_url = '');
SELECT 'recognition_missing_verified_at_count' AS test_name, COUNT(*) AS result FROM breed_registry_recognitions WHERE recognition_status IN ('recognized', 'not_recognized', 'provisional') AND (verified_at IS NULL OR verified_at = '');
SELECT 'recognition_duplicate_org_count' AS test_name, COUNT(*) AS result FROM (
  SELECT breed_id, organization_code, COUNT(*) AS duplicates
  FROM breed_registry_recognitions
  GROUP BY breed_id, organization_code
  HAVING COUNT(*) > 1
);

SELECT b.slug, b.name, COUNT(brr.id) AS needs_verification_count
FROM breeds b
JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
WHERE brr.recognition_status = 'needs_verification'
GROUP BY b.id, b.slug, b.name
ORDER BY b.name;

SELECT
  b.slug,
  b.name,
  brr.organization_code,
  brr.recognition_status,
  brr.recognized,
  brr.source_url,
  brr.verified_at
FROM breed_registry_recognitions brr
JOIN breeds b ON b.id = brr.breed_id
WHERE b.slug IN ('border-collie', 'labrador-retriever', 'kot-perski', 'ragdoll')
ORDER BY b.slug, brr.organization_code;
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

-- FCI dog breeds Batch 1 validation.
WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT 'fci_batch_1_count' AS test_name, COUNT(b.id) AS result
FROM fci_batch_1 fb
LEFT JOIN breeds b ON b.slug = fb.slug;

SELECT 'all_breeds_count_after_fci_batch_1' AS test_name, COUNT(*) AS result FROM breeds;
SELECT 'dog_breeds_count_after_fci_batch_1' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'dog';
SELECT 'cat_breeds_count_after_fci_batch_1' AS test_name, COUNT(*) AS result FROM breeds WHERE species = 'cat';

WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT b.slug, b.name
FROM fci_batch_1 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id AND bcs.section_key = 'history'
WHERE bcs.id IS NULL
ORDER BY b.slug;

WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT b.slug, b.name, COUNT(bf.id) AS faq_count
FROM fci_batch_1 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_faqs bf ON bf.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(bf.id) < 5
ORDER BY b.slug;

WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT b.slug, b.name
FROM fci_batch_1 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE cp.id IS NULL
ORDER BY b.slug;

WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT b.slug, b.name
FROM fci_batch_1 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
WHERE bi.id IS NULL
ORDER BY b.slug;

WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT b.slug, b.name
FROM fci_batch_1 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN affiliate_links al ON al.breed_id = b.id AND al.merchant = 'Placeholder'
WHERE al.id IS NULL
ORDER BY b.slug;

WITH fci_batch_1(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM fci_batch_1 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(brr.id) < 4
ORDER BY b.slug;

SELECT slug, COUNT(*) AS duplicates
FROM breeds
GROUP BY slug
HAVING COUNT(*) > 1;

SELECT
  b.slug,
  b.name,
  b.species,
  b.status,
  b.short_description,
  bi.image_url,
  cp.monthly_food_cost_min_pln,
  cp.monthly_food_cost_max_pln
FROM breeds b
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE b.slug IN ('australian-shepherd', 'welsh-corgi-pembroke', 'alaskan-malamute')
ORDER BY b.slug;

-- FCI dog breeds Batch 2 validation.
WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT 'fci_batch_2_count' AS test_name, COUNT(b.id) AS result
FROM fci_batch_2 fb
LEFT JOIN breeds b ON b.slug = fb.slug;

WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT b.slug, b.name
FROM fci_batch_2 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id AND bcs.section_key = 'history'
WHERE bcs.id IS NULL
ORDER BY b.slug;

WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT b.slug, b.name, COUNT(bf.id) AS faq_count
FROM fci_batch_2 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_faqs bf ON bf.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(bf.id) < 5
ORDER BY b.slug;

WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT b.slug, b.name
FROM fci_batch_2 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE cp.id IS NULL
ORDER BY b.slug;

WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT b.slug, b.name
FROM fci_batch_2 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
WHERE bi.id IS NULL
ORDER BY b.slug;

WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT b.slug, b.name
FROM fci_batch_2 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN affiliate_links al ON al.breed_id = b.id AND al.merchant = 'Placeholder'
WHERE al.id IS NULL
ORDER BY b.slug;

WITH fci_batch_2(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
)
SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM fci_batch_2 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(brr.id) < 4
ORDER BY b.slug;

SELECT
  b.slug,
  b.name,
  b.species,
  b.status,
  b.short_description,
  bi.image_url,
  cp.monthly_food_cost_min_pln,
  cp.monthly_food_cost_max_pln
FROM breeds b
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE b.slug IN ('american-staffordshire-terrier', 'springer-spaniel-angielski', 'bernardyn')
ORDER BY b.slug;

-- FCI dog breeds Batch 3 validation.
WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT 'fci_batch_3_count' AS test_name, COUNT(b.id) AS result
FROM fci_batch_3 fb
LEFT JOIN breeds b ON b.slug = fb.slug;

WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT b.slug, b.name
FROM fci_batch_3 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_content_sections bcs ON bcs.breed_id = b.id AND bcs.section_key = 'history'
WHERE bcs.id IS NULL
ORDER BY b.slug;

WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT b.slug, b.name, COUNT(bf.id) AS faq_count
FROM fci_batch_3 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_faqs bf ON bf.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(bf.id) < 5
ORDER BY b.slug;

WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT b.slug, b.name
FROM fci_batch_3 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE cp.id IS NULL
ORDER BY b.slug;

WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT b.slug, b.name
FROM fci_batch_3 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
WHERE bi.id IS NULL
ORDER BY b.slug;

WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT b.slug, b.name
FROM fci_batch_3 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN affiliate_links al ON al.breed_id = b.id AND al.merchant = 'Placeholder'
WHERE al.id IS NULL
ORDER BY b.slug;

WITH fci_batch_3(slug) AS (
  VALUES
  ('basset-hound'), ('bloodhound'), ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'), ('bearded-collie'), ('beauceron'),
  ('briard'), ('bouvier-des-flandres'), ('schipperke'),
  ('eurasier'), ('akita-amerykanska'), ('szpic-finski'),
  ('finski-lapphund'), ('lagotto-romagnolo'), ('portugalski-pies-wodny'),
  ('seter-irlandzki'), ('seter-angielski'), ('seter-szkocki-gordon'),
  ('pointer'), ('coton-de-tulear'), ('lhasa-apso'),
  ('pekinczyk'), ('mops'), ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM fci_batch_3 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(brr.id) < 4
ORDER BY b.slug;

SELECT
  b.slug,
  b.name,
  b.species,
  b.status,
  b.short_description,
  bi.image_url,
  cp.monthly_food_cost_min_pln,
  cp.monthly_food_cost_max_pln
FROM breeds b
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE b.slug IN ('basset-hound', 'gonczy-polski', 'mops')
ORDER BY b.slug;

WITH fci_batch_4(slug) AS (
  VALUES
  ('kuvasz'), ('hovawart'), ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'), ('appenzeller'), ('mastif-angielski'),
  ('mastino-napoletano'), ('mastif-tybetanski'), ('pinczer-niemiecki'),
  ('affenpinscher'), ('sznaucer-olbrzym'), ('sznaucer-sredni'),
  ('norfolk-terrier'), ('lakeland-terrier'), ('irish-terrier'),
  ('kerry-blue-terrier'), ('welsh-terrier'), ('australian-terrier'),
  ('bedlington-terrier'), ('dandie-dinmont-terrier'), ('border-terrier'),
  ('terier-czeski'), ('sealyham-terrier'), ('skye-terrier'),
  ('parson-russell-terrier')
)
SELECT COUNT(*) AS batch_4_breed_count
FROM breeds b
JOIN fci_batch_4 fb ON fb.slug = b.slug;

WITH fci_batch_4(slug) AS (
  VALUES
  ('kuvasz'), ('hovawart'), ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'), ('appenzeller'), ('mastif-angielski'),
  ('mastino-napoletano'), ('mastif-tybetanski'), ('pinczer-niemiecki'),
  ('affenpinscher'), ('sznaucer-olbrzym'), ('sznaucer-sredni'),
  ('norfolk-terrier'), ('lakeland-terrier'), ('irish-terrier'),
  ('kerry-blue-terrier'), ('welsh-terrier'), ('australian-terrier'),
  ('bedlington-terrier'), ('dandie-dinmont-terrier'), ('border-terrier'),
  ('terier-czeski'), ('sealyham-terrier'), ('skye-terrier'),
  ('parson-russell-terrier')
)
SELECT b.slug, b.name
FROM fci_batch_4 fb
LEFT JOIN breeds b ON b.slug = fb.slug
WHERE b.id IS NULL
ORDER BY fb.slug;

WITH fci_batch_4(slug) AS (
  VALUES
  ('kuvasz'), ('hovawart'), ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'), ('appenzeller'), ('mastif-angielski'),
  ('mastino-napoletano'), ('mastif-tybetanski'), ('pinczer-niemiecki'),
  ('affenpinscher'), ('sznaucer-olbrzym'), ('sznaucer-sredni'),
  ('norfolk-terrier'), ('lakeland-terrier'), ('irish-terrier'),
  ('kerry-blue-terrier'), ('welsh-terrier'), ('australian-terrier'),
  ('bedlington-terrier'), ('dandie-dinmont-terrier'), ('border-terrier'),
  ('terier-czeski'), ('sealyham-terrier'), ('skye-terrier'),
  ('parson-russell-terrier')
)
SELECT b.slug, b.name
FROM fci_batch_4 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE cp.id IS NULL
ORDER BY b.slug;

WITH fci_batch_4(slug) AS (
  VALUES
  ('kuvasz'), ('hovawart'), ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'), ('appenzeller'), ('mastif-angielski'),
  ('mastino-napoletano'), ('mastif-tybetanski'), ('pinczer-niemiecki'),
  ('affenpinscher'), ('sznaucer-olbrzym'), ('sznaucer-sredni'),
  ('norfolk-terrier'), ('lakeland-terrier'), ('irish-terrier'),
  ('kerry-blue-terrier'), ('welsh-terrier'), ('australian-terrier'),
  ('bedlington-terrier'), ('dandie-dinmont-terrier'), ('border-terrier'),
  ('terier-czeski'), ('sealyham-terrier'), ('skye-terrier'),
  ('parson-russell-terrier')
)
SELECT b.slug, b.name
FROM fci_batch_4 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
WHERE bi.id IS NULL
ORDER BY b.slug;

WITH fci_batch_4(slug) AS (
  VALUES
  ('kuvasz'), ('hovawart'), ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'), ('appenzeller'), ('mastif-angielski'),
  ('mastino-napoletano'), ('mastif-tybetanski'), ('pinczer-niemiecki'),
  ('affenpinscher'), ('sznaucer-olbrzym'), ('sznaucer-sredni'),
  ('norfolk-terrier'), ('lakeland-terrier'), ('irish-terrier'),
  ('kerry-blue-terrier'), ('welsh-terrier'), ('australian-terrier'),
  ('bedlington-terrier'), ('dandie-dinmont-terrier'), ('border-terrier'),
  ('terier-czeski'), ('sealyham-terrier'), ('skye-terrier'),
  ('parson-russell-terrier')
)
SELECT b.slug, b.name
FROM fci_batch_4 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN affiliate_links al ON al.breed_id = b.id AND al.merchant = 'Placeholder'
WHERE al.id IS NULL
ORDER BY b.slug;

WITH fci_batch_4(slug) AS (
  VALUES
  ('kuvasz'), ('hovawart'), ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'), ('appenzeller'), ('mastif-angielski'),
  ('mastino-napoletano'), ('mastif-tybetanski'), ('pinczer-niemiecki'),
  ('affenpinscher'), ('sznaucer-olbrzym'), ('sznaucer-sredni'),
  ('norfolk-terrier'), ('lakeland-terrier'), ('irish-terrier'),
  ('kerry-blue-terrier'), ('welsh-terrier'), ('australian-terrier'),
  ('bedlington-terrier'), ('dandie-dinmont-terrier'), ('border-terrier'),
  ('terier-czeski'), ('sealyham-terrier'), ('skye-terrier'),
  ('parson-russell-terrier')
)
SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM fci_batch_4 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(brr.id) < 4
ORDER BY b.slug;

SELECT
  b.slug,
  b.name,
  b.species,
  b.status,
  b.short_description,
  bi.image_url,
  cp.monthly_food_cost_min_pln,
  cp.monthly_food_cost_max_pln
FROM breeds b
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE b.slug IN ('kuvasz', 'mastif-angielski', 'parson-russell-terrier')
ORDER BY b.slug;

WITH fci_batch_5(slug) AS (
  VALUES
  ('terrier-brazylijski'), ('niemiecki-terier-mysliwski'), ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'), ('glen-of-imaal-terrier'), ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'), ('miniaturowy-bull-terrier'), ('australian-silky-terrier'),
  ('english-toy-terrier'), ('bolonczyk'), ('lwi-piesek'),
  ('griffon-belge'), ('griffon-bruxellois'), ('petit-brabancon'),
  ('grzywacz-chinski'), ('spaniel-tybetanski'), ('terier-tybetanski'),
  ('king-charles-spaniel'), ('chin-japonski'), ('russkiy-toy'),
  ('kromfohrlander'), ('chesapeake-bay-retriever'), ('kooikerhondje'),
  ('barbet')
)
SELECT COUNT(*) AS batch_5_breed_count
FROM breeds b
JOIN fci_batch_5 fb ON fb.slug = b.slug;

WITH fci_batch_5(slug) AS (
  VALUES
  ('terrier-brazylijski'), ('niemiecki-terier-mysliwski'), ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'), ('glen-of-imaal-terrier'), ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'), ('miniaturowy-bull-terrier'), ('australian-silky-terrier'),
  ('english-toy-terrier'), ('bolonczyk'), ('lwi-piesek'),
  ('griffon-belge'), ('griffon-bruxellois'), ('petit-brabancon'),
  ('grzywacz-chinski'), ('spaniel-tybetanski'), ('terier-tybetanski'),
  ('king-charles-spaniel'), ('chin-japonski'), ('russkiy-toy'),
  ('kromfohrlander'), ('chesapeake-bay-retriever'), ('kooikerhondje'),
  ('barbet')
)
SELECT b.slug, b.name
FROM fci_batch_5 fb
LEFT JOIN breeds b ON b.slug = fb.slug
WHERE b.id IS NULL
ORDER BY fb.slug;

WITH fci_batch_5(slug) AS (
  VALUES
  ('terrier-brazylijski'), ('niemiecki-terier-mysliwski'), ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'), ('glen-of-imaal-terrier'), ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'), ('miniaturowy-bull-terrier'), ('australian-silky-terrier'),
  ('english-toy-terrier'), ('bolonczyk'), ('lwi-piesek'),
  ('griffon-belge'), ('griffon-bruxellois'), ('petit-brabancon'),
  ('grzywacz-chinski'), ('spaniel-tybetanski'), ('terier-tybetanski'),
  ('king-charles-spaniel'), ('chin-japonski'), ('russkiy-toy'),
  ('kromfohrlander'), ('chesapeake-bay-retriever'), ('kooikerhondje'),
  ('barbet')
)
SELECT b.slug, b.name
FROM fci_batch_5 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE cp.id IS NULL
ORDER BY b.slug;

WITH fci_batch_5(slug) AS (
  VALUES
  ('terrier-brazylijski'), ('niemiecki-terier-mysliwski'), ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'), ('glen-of-imaal-terrier'), ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'), ('miniaturowy-bull-terrier'), ('australian-silky-terrier'),
  ('english-toy-terrier'), ('bolonczyk'), ('lwi-piesek'),
  ('griffon-belge'), ('griffon-bruxellois'), ('petit-brabancon'),
  ('grzywacz-chinski'), ('spaniel-tybetanski'), ('terier-tybetanski'),
  ('king-charles-spaniel'), ('chin-japonski'), ('russkiy-toy'),
  ('kromfohrlander'), ('chesapeake-bay-retriever'), ('kooikerhondje'),
  ('barbet')
)
SELECT b.slug, b.name
FROM fci_batch_5 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
WHERE bi.id IS NULL
ORDER BY b.slug;

WITH fci_batch_5(slug) AS (
  VALUES
  ('terrier-brazylijski'), ('niemiecki-terier-mysliwski'), ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'), ('glen-of-imaal-terrier'), ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'), ('miniaturowy-bull-terrier'), ('australian-silky-terrier'),
  ('english-toy-terrier'), ('bolonczyk'), ('lwi-piesek'),
  ('griffon-belge'), ('griffon-bruxellois'), ('petit-brabancon'),
  ('grzywacz-chinski'), ('spaniel-tybetanski'), ('terier-tybetanski'),
  ('king-charles-spaniel'), ('chin-japonski'), ('russkiy-toy'),
  ('kromfohrlander'), ('chesapeake-bay-retriever'), ('kooikerhondje'),
  ('barbet')
)
SELECT b.slug, b.name
FROM fci_batch_5 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN affiliate_links al ON al.breed_id = b.id AND al.merchant = 'Placeholder'
WHERE al.id IS NULL
ORDER BY b.slug;

WITH fci_batch_5(slug) AS (
  VALUES
  ('terrier-brazylijski'), ('niemiecki-terier-mysliwski'), ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'), ('glen-of-imaal-terrier'), ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'), ('miniaturowy-bull-terrier'), ('australian-silky-terrier'),
  ('english-toy-terrier'), ('bolonczyk'), ('lwi-piesek'),
  ('griffon-belge'), ('griffon-bruxellois'), ('petit-brabancon'),
  ('grzywacz-chinski'), ('spaniel-tybetanski'), ('terier-tybetanski'),
  ('king-charles-spaniel'), ('chin-japonski'), ('russkiy-toy'),
  ('kromfohrlander'), ('chesapeake-bay-retriever'), ('kooikerhondje'),
  ('barbet')
)
SELECT b.slug, b.name, COUNT(brr.id) AS recognition_count
FROM fci_batch_5 fb
JOIN breeds b ON b.slug = fb.slug
LEFT JOIN breed_registry_recognitions brr ON brr.breed_id = b.id
GROUP BY b.id, b.slug, b.name
HAVING COUNT(brr.id) < 4
ORDER BY b.slug;

SELECT
  b.slug,
  b.name,
  b.species,
  b.status,
  b.short_description,
  bi.image_url,
  cp.monthly_food_cost_min_pln,
  cp.monthly_food_cost_max_pln
FROM breeds b
LEFT JOIN breed_images bi ON bi.breed_id = b.id AND bi.is_primary = 1
LEFT JOIN calculator_profiles cp ON cp.breed_id = b.id
WHERE b.slug IN ('terrier-brazylijski', 'bolonczyk', 'barbet')
ORDER BY b.slug;
