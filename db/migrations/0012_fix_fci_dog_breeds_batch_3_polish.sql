PRAGMA foreign_keys = ON;

-- Poprawki redakcyjne i polskie znaki dla FCI dog breeds batch 3 (2026-06-24).

UPDATE breeds
SET
  name = 'Akita amerykańska',
  short_description = REPLACE(short_description, 'Akita amerykanska', 'Akita amerykańska'),
  long_description = REPLACE(long_description, 'Akita amerykanska', 'Akita amerykańska'),
  meta_title = REPLACE(meta_title, 'Akita amerykanska', 'Akita amerykańska'),
  meta_description = REPLACE(meta_description, 'Akita amerykanska', 'Akita amerykańska'),
  h1 = REPLACE(h1, 'Akita amerykanska', 'Akita amerykańska')
WHERE slug = 'akita-amerykanska';

UPDATE breed_content_sections
SET body = REPLACE(body, 'Akita amerykanska', 'Akita amerykańska')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-amerykanska');

UPDATE breed_faqs
SET
  question = REPLACE(question, 'Akita amerykanska', 'Akita amerykańska'),
  answer = REPLACE(answer, 'Akita amerykanska', 'Akita amerykańska')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-amerykanska');

UPDATE breed_images
SET
  image_alt = REPLACE(image_alt, 'Akita amerykanska', 'Akita amerykańska'),
  image_title = REPLACE(image_title, 'Akita amerykanska', 'Akita amerykańska')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-amerykanska');

UPDATE affiliate_links
SET
  label = REPLACE(label, 'Akita amerykanska', 'Akita amerykańska'),
  anchor_text = REPLACE(anchor_text, 'Akita amerykanska', 'Akita amerykańska')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-amerykanska');
UPDATE breeds
SET
  name = 'Szpic fiński',
  short_description = REPLACE(short_description, 'Szpic finski', 'Szpic fiński'),
  long_description = REPLACE(long_description, 'Szpic finski', 'Szpic fiński'),
  meta_title = REPLACE(meta_title, 'Szpic finski', 'Szpic fiński'),
  meta_description = REPLACE(meta_description, 'Szpic finski', 'Szpic fiński'),
  h1 = REPLACE(h1, 'Szpic finski', 'Szpic fiński')
WHERE slug = 'szpic-finski';

UPDATE breed_content_sections
SET body = REPLACE(body, 'Szpic finski', 'Szpic fiński')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'szpic-finski');

UPDATE breed_faqs
SET
  question = REPLACE(question, 'Szpic finski', 'Szpic fiński'),
  answer = REPLACE(answer, 'Szpic finski', 'Szpic fiński')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'szpic-finski');

UPDATE breed_images
SET
  image_alt = REPLACE(image_alt, 'Szpic finski', 'Szpic fiński'),
  image_title = REPLACE(image_title, 'Szpic finski', 'Szpic fiński')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'szpic-finski');

UPDATE affiliate_links
SET
  label = REPLACE(label, 'Szpic finski', 'Szpic fiński'),
  anchor_text = REPLACE(anchor_text, 'Szpic finski', 'Szpic fiński')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'szpic-finski');
UPDATE breeds
SET
  name = 'Fiński lapphund',
  short_description = REPLACE(short_description, 'Finski lapphund', 'Fiński lapphund'),
  long_description = REPLACE(long_description, 'Finski lapphund', 'Fiński lapphund'),
  meta_title = REPLACE(meta_title, 'Finski lapphund', 'Fiński lapphund'),
  meta_description = REPLACE(meta_description, 'Finski lapphund', 'Fiński lapphund'),
  h1 = REPLACE(h1, 'Finski lapphund', 'Fiński lapphund')
WHERE slug = 'finski-lapphund';

UPDATE breed_content_sections
SET body = REPLACE(body, 'Finski lapphund', 'Fiński lapphund')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'finski-lapphund');

UPDATE breed_faqs
SET
  question = REPLACE(question, 'Finski lapphund', 'Fiński lapphund'),
  answer = REPLACE(answer, 'Finski lapphund', 'Fiński lapphund')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'finski-lapphund');

UPDATE breed_images
SET
  image_alt = REPLACE(image_alt, 'Finski lapphund', 'Fiński lapphund'),
  image_title = REPLACE(image_title, 'Finski lapphund', 'Fiński lapphund')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'finski-lapphund');

UPDATE affiliate_links
SET
  label = REPLACE(label, 'Finski lapphund', 'Fiński lapphund'),
  anchor_text = REPLACE(anchor_text, 'Finski lapphund', 'Fiński lapphund')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'finski-lapphund');
UPDATE breeds
SET
  name = 'Coton de Tuléar',
  short_description = REPLACE(short_description, 'Coton de Tulear', 'Coton de Tuléar'),
  long_description = REPLACE(long_description, 'Coton de Tulear', 'Coton de Tuléar'),
  meta_title = REPLACE(meta_title, 'Coton de Tulear', 'Coton de Tuléar'),
  meta_description = REPLACE(meta_description, 'Coton de Tulear', 'Coton de Tuléar'),
  h1 = REPLACE(h1, 'Coton de Tulear', 'Coton de Tuléar')
WHERE slug = 'coton-de-tulear';

UPDATE breed_content_sections
SET body = REPLACE(body, 'Coton de Tulear', 'Coton de Tuléar')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'coton-de-tulear');

UPDATE breed_faqs
SET
  question = REPLACE(question, 'Coton de Tulear', 'Coton de Tuléar'),
  answer = REPLACE(answer, 'Coton de Tulear', 'Coton de Tuléar')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'coton-de-tulear');

UPDATE breed_images
SET
  image_alt = REPLACE(image_alt, 'Coton de Tulear', 'Coton de Tuléar'),
  image_title = REPLACE(image_title, 'Coton de Tulear', 'Coton de Tuléar')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'coton-de-tulear');

UPDATE affiliate_links
SET
  label = REPLACE(label, 'Coton de Tulear', 'Coton de Tuléar'),
  anchor_text = REPLACE(anchor_text, 'Coton de Tulear', 'Coton de Tuléar')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'coton-de-tulear');
UPDATE breeds
SET
  name = 'Pekińczyk',
  short_description = REPLACE(short_description, 'Pekinczyk', 'Pekińczyk'),
  long_description = REPLACE(long_description, 'Pekinczyk', 'Pekińczyk'),
  meta_title = REPLACE(meta_title, 'Pekinczyk', 'Pekińczyk'),
  meta_description = REPLACE(meta_description, 'Pekinczyk', 'Pekińczyk'),
  h1 = REPLACE(h1, 'Pekinczyk', 'Pekińczyk')
WHERE slug = 'pekinczyk';

UPDATE breed_content_sections
SET body = REPLACE(body, 'Pekinczyk', 'Pekińczyk')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pekinczyk');

UPDATE breed_faqs
SET
  question = REPLACE(question, 'Pekinczyk', 'Pekińczyk'),
  answer = REPLACE(answer, 'Pekinczyk', 'Pekińczyk')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pekinczyk');

UPDATE breed_images
SET
  image_alt = REPLACE(image_alt, 'Pekinczyk', 'Pekińczyk'),
  image_title = REPLACE(image_title, 'Pekinczyk', 'Pekińczyk')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pekinczyk');

UPDATE affiliate_links
SET
  label = REPLACE(label, 'Pekinczyk', 'Pekińczyk'),
  anchor_text = REPLACE(anchor_text, 'Pekinczyk', 'Pekińczyk')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pekinczyk');
UPDATE breeds
SET
  name = 'Cocker spaniel amerykański',
  short_description = REPLACE(short_description, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  long_description = REPLACE(long_description, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  meta_title = REPLACE(meta_title, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  meta_description = REPLACE(meta_description, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  h1 = REPLACE(h1, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański')
WHERE slug = 'cocker-spaniel-amerykanski';

UPDATE breed_content_sections
SET body = REPLACE(body, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-amerykanski');

UPDATE breed_faqs
SET
  question = REPLACE(question, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  answer = REPLACE(answer, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-amerykanski');

UPDATE breed_images
SET
  image_alt = REPLACE(image_alt, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  image_title = REPLACE(image_title, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-amerykanski');

UPDATE affiliate_links
SET
  label = REPLACE(label, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański'),
  anchor_text = REPLACE(anchor_text, 'Cocker spaniel amerykanski', 'Cocker spaniel amerykański')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-amerykanski');

UPDATE breed_content_sections
SET body = REPLACE(body, 'zaro?ni?tym', 'zarośniętym')
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'petit-basset-griffon-vendeen');

UPDATE breed_registry_recognitions
SET
  organization_name = 'Fédération Cynologique Internationale',
  note = REPLACE(
    REPLACE(
      REPLACE(
        REPLACE(note, 'F?d?ration Cynologique Internationale', 'Fédération Cynologique Internationale'),
        'Nazwa w ?r?dle:',
        'Nazwa w źródle:'
      ),
      'Vend?en',
      'Vendéen'
    ),
    'Tul?ar',
    'Tuléar'
  )
WHERE organization_code = 'FCI'
  AND breed_id IN (
    SELECT id FROM breeds WHERE slug IN ('basset-hound', 'bloodhound', 'petit-basset-griffon-vendeen', 'gonczy-polski', 'bearded-collie', 'beauceron', 'briard', 'bouvier-des-flandres', 'schipperke', 'eurasier', 'akita-amerykanska', 'szpic-finski', 'finski-lapphund', 'lagotto-romagnolo', 'portugalski-pies-wodny', 'seter-irlandzki', 'seter-angielski', 'seter-szkocki-gordon', 'pointer', 'coton-de-tulear', 'lhasa-apso', 'pekinczyk', 'mops', 'cocker-spaniel-amerykanski', 'springer-spaniel-walijski')
  );
