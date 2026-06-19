PRAGMA foreign_keys = ON;

-- Seed popular breeds added in the production-domain expansion stage.

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Border Collie', 'border-collie', 'dog', 'Border Collie to pies, bardzo inteligentny, uważny i nastawiony na pracę z człowiekiem.', 'Border Collie to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako bardzo inteligentny, uważny i nastawiony na pracę z człowiekiem. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Zbyt mało zajęcia głowy szybko prowadzi do frustracji.', 14, 22, 46, 56, 12, 15, 'high', 'medium', 'medium', 4, 2, 750, 1200, 'Border Collie - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Border Collie: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Border Collie - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Beagle', 'beagle', 'dog', 'Beagle to pies, wesoły, ciekawski i mocno kierujący się nosem.', 'Beagle to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako wesoły, ciekawski i mocno kierujący się nosem. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Instynkt tropienia bywa silniejszy niż przywołanie.', 9, 14, 33, 40, 12, 15, 'high', 'low', 'medium', 4, 3, 550, 900, 'Beagle - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Beagle: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Beagle - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Shih Tzu', 'shih-tzu', 'dog', 'Shih Tzu to pies, towarzyski, spokojny i przywiązany do domowników.', 'Shih Tzu to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako towarzyski, spokojny i przywiązany do domowników. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Zaniedbana sierść szybko się kołtuni i obniża komfort psa.', 4, 8, 20, 28, 10, 16, 'low', 'high', 'medium', 4, 5, 280, 520, 'Shih Tzu - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Shih Tzu: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Shih Tzu - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Maltańczyk', 'maltanczyk', 'dog', 'Maltańczyk to pies, kontaktowy, pogodny i zwykle chętny do zabawy.', 'Maltańczyk to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako kontaktowy, pogodny i zwykle chętny do zabawy. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Łatwo go rozpieszczać i pomijać naukę zasad.', 3, 4, 20, 25, 12, 15, 'medium', 'high', 'easy', 4, 5, 220, 360, 'Maltańczyk - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Maltańczyk: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Maltańczyk - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Yorkshire Terrier', 'yorkshire-terrier', 'dog', 'Yorkshire Terrier to pies, odważny, żywy i często bardziej pewny siebie, niż sugeruje rozmiar.', 'Yorkshire Terrier to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako odważny, żywy i często bardziej pewny siebie, niż sugeruje rozmiar. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Brak zasad może prowadzić do szczekliwości i nerwowości.', 2, 4, 18, 23, 12, 16, 'medium', 'high', 'medium', 3, 5, 200, 350, 'Yorkshire Terrier - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Yorkshire Terrier: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Yorkshire Terrier - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Jamnik', 'jamnik', 'dog', 'Jamnik to pies, uparty, bystry i często bardzo przywiązany do swoich ludzi.', 'Jamnik to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako uparty, bystry i często bardzo przywiązany do swoich ludzi. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Skoki, nadwaga i brak kontroli ruchu mogą obciążać kręgosłup.', 5, 12, 20, 27, 12, 16, 'medium', 'low', 'medium', 3, 4, 350, 650, 'Jamnik - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Jamnik: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Jamnik - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Chihuahua', 'chihuahua', 'dog', 'Chihuahua to pies, czujny, energiczny i silnie związany z opiekunem.', 'Chihuahua to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako czujny, energiczny i silnie związany z opiekunem. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Delikatny rozmiar wymaga ostrożności w kontaktach z dziećmi i większymi psami.', 1.5, 3, 15, 23, 12, 17, 'medium', 'low', 'medium', 3, 5, 140, 280, 'Chihuahua - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Chihuahua: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Chihuahua - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Cavalier King Charles Spaniel', 'cavalier-king-charles-spaniel', 'dog', 'Cavalier King Charles Spaniel to pies, łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka.', 'Cavalier King Charles Spaniel to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Źle znosi długą samotność i potrzebuje bliskości opiekuna.', 5.5, 8.5, 30, 33, 9, 14, 'medium', 'medium', 'easy', 5, 5, 320, 520, 'Cavalier King Charles Spaniel - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Cavalier King Charles Spaniel: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Cavalier King Charles Spaniel - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Buldog francuski', 'buldog-francuski', 'dog', 'Buldog francuski to pies, towarzyski, zabawny i zwykle mocno przywiązany do domowników.', 'Buldog francuski to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako towarzyski, zabawny i zwykle mocno przywiązany do domowników. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Upał, forsowny ruch i nadwaga mogą mocno obniżać komfort psa.', 8, 14, 27, 35, 10, 12, 'low', 'low', 'medium', 4, 5, 450, 750, 'Buldog francuski - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Buldog francuski: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Buldog francuski - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Bokser', 'bokser', 'dog', 'Bokser to pies, energiczny, radosny i bardzo rodzinny.', 'Bokser to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako energiczny, radosny i bardzo rodzinny. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Młody bokser bywa impulsywny i potrzebuje nauki wyciszenia.', 25, 32, 53, 63, 10, 12, 'high', 'low', 'medium', 4, 2, 1200, 1700, 'Bokser - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Bokser: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Bokser - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Rottweiler', 'rottweiler', 'dog', 'Rottweiler to pies, pewny siebie, lojalny i wymagający odpowiedzialnego prowadzenia.', 'Rottweiler to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako pewny siebie, lojalny i wymagający odpowiedzialnego prowadzenia. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Siła i pewność siebie rasy wymagają konsekwencji oraz dobrej socjalizacji.', 35, 60, 56, 68, 8, 11, 'high', 'low', 'hard', 3, 1, 1600, 2500, 'Rottweiler - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Rottweiler: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Rottweiler - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Berneński pies pasterski', 'bernenski-pies-pasterski', 'dog', 'Berneński pies pasterski to pies, łagodny, cierpliwy i silnie związany z rodziną.', 'Berneński pies pasterski to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako łagodny, cierpliwy i silnie związany z rodziną. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Rozmiar, sierść i krótsza średnia długość życia wymagają świadomej decyzji.', 35, 55, 58, 70, 7, 10, 'medium', 'high', 'medium', 5, 1, 1600, 2400, 'Berneński pies pasterski - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Berneński pies pasterski: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Berneński pies pasterski - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Pudel', 'pudel', 'dog', 'Pudel to pies, inteligentny, wesoły i chętny do nauki.', 'Pudel to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako inteligentny, wesoły i chętny do nauki. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Zaniedbana sierść szybko traci komfort i wymaga fachowej pielęgnacji.', 4, 25, 24, 60, 12, 16, 'medium', 'high', 'easy', 5, 4, 300, 1200, 'Pudel - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Pudel: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Pudel - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Cocker Spaniel angielski', 'cocker-spaniel-angielski', 'dog', 'Cocker Spaniel angielski to pies, radosny, wrażliwy i aktywny.', 'Cocker Spaniel angielski to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako radosny, wrażliwy i aktywny. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Bez ruchu i zasad może stać się pobudliwy lub nadmiernie łakomy.', 12, 16, 38, 41, 12, 14, 'high', 'high', 'medium', 4, 3, 700, 1050, 'Cocker Spaniel angielski - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Cocker Spaniel angielski: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Cocker Spaniel angielski - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Akita inu', 'akita-inu', 'dog', 'Akita inu to pies, spokojny, dumny i często zdystansowany wobec obcych.', 'Akita inu to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako spokojny, dumny i często zdystansowany wobec obcych. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Wymaga bardzo świadomej socjalizacji i nie zawsze lubi inne psy.', 25, 45, 58, 70, 10, 13, 'medium', 'medium', 'hard', 3, 2, 1100, 1800, 'Akita inu - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Akita inu: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Akita inu - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Samoyed', 'samoyed', 'dog', 'Samoyed to pies, towarzyski, pogodny i energiczny.', 'Samoyed to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako towarzyski, pogodny i energiczny. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Gęsta sierść i potrzeba aktywności są dużym zobowiązaniem.', 16, 30, 48, 60, 12, 14, 'high', 'high', 'medium', 4, 2, 900, 1500, 'Samoyed - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Samoyed: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Samoyed - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Siberian Husky', 'siberian-husky', 'dog', 'Siberian Husky to pies, niezależny, energiczny i bardzo wytrzymały.', 'Siberian Husky to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako niezależny, energiczny i bardzo wytrzymały. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Silna potrzeba ruchu i skłonność do ucieczek bywają trudne dla początkujących.', 16, 28, 50, 60, 12, 14, 'high', 'medium', 'hard', 3, 1, 1000, 1600, 'Siberian Husky - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Siberian Husky: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Siberian Husky - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Jack Russell Terrier', 'jack-russell-terrier', 'dog', 'Jack Russell Terrier to pies, odważny, szybki i pełen pomysłów.', 'Jack Russell Terrier to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako odważny, szybki i pełen pomysłów. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Nuda, brak zasad i pogoń za bodźcami szybko prowadzą do problemów.', 5, 8, 25, 30, 13, 16, 'high', 'low', 'hard', 3, 3, 400, 700, 'Jack Russell Terrier - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Jack Russell Terrier: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Jack Russell Terrier - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Cane Corso', 'cane-corso', 'dog', 'Cane Corso to pies, spokojny, czujny i mocno związany z rodziną.', 'Cane Corso to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako spokojny, czujny i mocno związany z rodziną. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Wymaga odpowiedzialnej socjalizacji, kontroli i przewidywania sytuacji.', 40, 50, 60, 68, 9, 12, 'medium', 'low', 'hard', 3, 1, 1600, 2300, 'Cane Corso - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Cane Corso: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Cane Corso - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Sznaucer miniaturowy', 'sznaucer-miniaturowy', 'dog', 'Sznaucer miniaturowy to pies, czujny, bystry i często bardzo komunikatywny.', 'Sznaucer miniaturowy to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To pies opisywany jako czujny, bystry i często bardzo komunikatywny. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Może być szczekliwy, jeśli nie nauczy się spokojnej reakcji na bodźce.', 5, 9, 30, 36, 12, 15, 'medium', 'high', 'medium', 4, 4, 350, 650, 'Sznaucer miniaturowy - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Sznaucer miniaturowy: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Sznaucer miniaturowy - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Ragdoll', 'ragdoll', 'cat', 'Ragdoll to kot, łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka.', 'Ragdoll to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To kot opisywany jako łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Nie powinien być traktowany jak pluszowa zabawka, mimo łagodnego zachowania.', 4, 9, 23, 30, 12, 15, 'medium', 'medium', 'easy', 5, 5, 230, 430, 'Ragdoll - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Ragdoll: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Ragdoll - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Kot syberyjski', 'kot-syberyjski', 'cat', 'Kot syberyjski to kot, ciekawski, sprawny i zwykle towarzyski.', 'Kot syberyjski to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To kot opisywany jako ciekawski, sprawny i zwykle towarzyski. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Potrzebuje wspinania, zabawy i zajęcia, nie tylko miski i legowiska.', 4, 9, 25, 35, 12, 16, 'medium', 'high', 'easy', 4, 4, 240, 450, 'Kot syberyjski - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Kot syberyjski: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Kot syberyjski - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Kot perski', 'kot-perski', 'cat', 'Kot perski to kot, łagodny, stateczny i ceniący przewidywalne otoczenie.', 'Kot perski to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To kot opisywany jako łagodny, stateczny i ceniący przewidywalne otoczenie. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Pielęgnacja sierści i okolic oczu jest stałym obowiązkiem.', 3, 7, 20, 30, 12, 15, 'low', 'high', 'medium', 4, 5, 200, 380, 'Kot perski - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Kot perski: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Kot perski - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Bengal', 'bengal', 'cat', 'Bengal to kot, aktywny, ciekawski i bardzo potrzebujący bodźców.', 'Bengal to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To kot opisywany jako aktywny, ciekawski i bardzo potrzebujący bodźców. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Nuda może prowadzić do frustracji i niszczenia otoczenia.', 4, 8, 25, 35, 12, 16, 'high', 'low', 'medium', 3, 3, 260, 480, 'Bengal - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Bengal: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Bengal - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO breeds (name, slug, species, short_description, long_description, weight_min_kg, weight_max_kg, height_min_cm, height_max_cm, life_expectancy_min_years, life_expectancy_max_years, activity_level, grooming_level, training_difficulty, family_friendly_score, apartment_score, daily_calories_min, daily_calories_max, meta_title, meta_description, h1, status)
VALUES ('Sfinks', 'sfinks', 'cat', 'Sfinks to kot, towarzyski, ciepłolubny i bardzo kontaktowy.', 'Sfinks to rasa, która najlepiej odnajduje się u opiekunów rozumiejących jej potrzeby. To kot opisywany jako towarzyski, ciepłolubny i bardzo kontaktowy. W praktyce wymaga dopasowania ruchu, żywienia i pielęgnacji do wieku, zdrowia oraz trybu życia. Brak sierści nie oznacza braku pielęgnacji.', 3, 6, 20, 25, 12, 15, 'medium', 'medium', 'easy', 4, 5, 230, 420, 'Sfinks - opis rasy, charakter i koszty | Futrio', 'Poznaj rasę Sfinks: charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.', 'Sfinks - opis rasy, charakter i koszty utrzymania', 'published')
ON CONFLICT(slug) DO UPDATE SET
  name=excluded.name,
  species=excluded.species,
  short_description=excluded.short_description,
  long_description=excluded.long_description,
  weight_min_kg=excluded.weight_min_kg,
  weight_max_kg=excluded.weight_max_kg,
  height_min_cm=excluded.height_min_cm,
  height_max_cm=excluded.height_max_cm,
  life_expectancy_min_years=excluded.life_expectancy_min_years,
  life_expectancy_max_years=excluded.life_expectancy_max_years,
  activity_level=excluded.activity_level,
  grooming_level=excluded.grooming_level,
  training_difficulty=excluded.training_difficulty,
  family_friendly_score=excluded.family_friendly_score,
  apartment_score=excluded.apartment_score,
  daily_calories_min=excluded.daily_calories_min,
  daily_calories_max=excluded.daily_calories_max,
  meta_title=excluded.meta_title,
  meta_description=excluded.meta_description,
  h1=excluded.h1,
  status=excluded.status,
  updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Problemy z kręgosłupem', 'problemy-z-kregoslupem', 'Ogólna kategoria problemów związanych z kręgosłupem i komfortem ruchu.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Problemy oddechowe', 'problemy-oddechowe', 'Ogólna kategoria trudności z oddychaniem, tolerancją wysiłku lub upału.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Choroby oczu', 'choroby-oczu', 'Ogólna kategoria problemów okulistycznych, takich jak łzawienie, podrażnienia lub pogorszenie widzenia.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Choroby serca', 'choroby-serca', 'Ogólna kategoria problemów kardiologicznych, które mogą wymagać diagnostyki i okresowych kontroli.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Problemy skórne', 'problemy-skorne', 'Ogólna kategoria problemów ze skórą i sierścią, które mogą mieć różne przyczyny.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Problemy stomatologiczne', 'problemy-stomatologiczne', 'Ogólna kategoria problemów z zębami, dziąsłami i higieną jamy ustnej.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Choroby nerek', 'choroby-nerek', 'Ogólna kategoria problemów nerkowych, które wymagają diagnostyki i kontroli u lekarza weterynarii.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT INTO health_conditions (name, slug, description)
VALUES ('Problemy z nadwagą', 'problemy-z-nadwaga', 'Ogólna kategoria ryzyka związanego z nadmierną masą ciała i zbyt kaloryczną dietą.')
ON CONFLICT(slug) DO UPDATE SET name = excluded.name, description = excluded.description, updated_at = CURRENT_TIMESTAMP;

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 112, 396, 50, 150, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Border Collie jest opisywany jako bardzo inteligentny, uważny i nastawiony na pracę z człowiekiem. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Zbyt mało zajęcia głowy szybko prowadzi do frustracji. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych opiekunów, którzy lubią naukę, spacery i zadania węchowe. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Border Collie potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Border Collie może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Regularne czesanie i kontrola podszerstka zwykle wystarczają. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje powinny uwzględniać dużą aktywność i częsty trening. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, oczy i regenerację po intensywnym ruchu. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Border Collie trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Border Collie trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często świetnie radzi sobie w sportach kynologicznych, ale potrzebuje także nauki odpoczywania. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Border Collie nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Border Collie jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'border-collie';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-border-collie.svg', 'Border Collie - zdjęcie rasy', 'Border Collie - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'border-collie' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'border-collie' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Border Collie', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'border-collie' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'border-collie' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 90, 252, 25, 80, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Beagle jest opisywany jako wesoły, ciekawski i mocno kierujący się nosem. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Instynkt tropienia bywa silniejszy niż przywołanie. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób, które akceptują samodzielność psa gończego i lubią długie spacery. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Beagle potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Beagle może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale uszy wymagają regularnej kontroli. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Ma dobry apetyt, dlatego porcje warto odmierzać konsekwentnie. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na wagę, uszy i kondycję kręgosłupa. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Beagle trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Beagle trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Potrafi długo analizować zapachy, więc praca nosem jest dla niego naturalną nagrodą. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Beagle nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Beagle jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto pilnować porcji i smakołyków, bo nadwaga obciąża organizm.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'beagle';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'beagle';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-beagle.svg', 'Beagle - zdjęcie rasy', 'Beagle - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'beagle' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'beagle' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Beagle', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'beagle' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'beagle' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.2, 2.0, 1.2, 90, 180, 110, 300, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Shih Tzu jest opisywany jako towarzyski, spokojny i przywiązany do domowników. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Zaniedbana sierść szybko się kołtuni i obniża komfort psa. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów szukających małego psa, ale gotowych na systematyczną pielęgnację. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Shih Tzu potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Shih Tzu może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako niska. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Wymaga regularnego czesania, kąpieli i pielęgnacji okolic oczu. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Małe porcje powinny być dobrej jakości i dopasowane do aktywności. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, oddech, zęby i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Shih Tzu trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Shih Tzu trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Mimo ozdobnego wyglądu wiele shih tzu lubi krótkie zabawy i spokojne treningi. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Shih Tzu nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Shih Tzu jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto obserwować oczy i reagować na łzawienie, zaczerwienienie lub dyskomfort.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-oczu' WHERE b.slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Małe psy często wymagają regularnej kontroli zębów i higieny jamy ustnej.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-stomatologiczne' WHERE b.slug = 'shih-tzu';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-shih-tzu.svg', 'Shih Tzu - zdjęcie rasy', 'Shih Tzu - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'shih-tzu' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'shih-tzu' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Shih Tzu', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'shih-tzu' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'shih-tzu' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 180, 110, 300, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Maltańczyk jest opisywany jako kontaktowy, pogodny i zwykle chętny do zabawy. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Łatwo go rozpieszczać i pomijać naukę zasad. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą małego psa blisko rodziny i mają czas na pielęgnację. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Maltańczyk potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Maltańczyk może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Biała sierść wymaga regularnego czesania i dbania o okolice oczu. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Precyzyjne porcje są ważne, bo nadmiar smakołyków szybko robi różnicę. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, oczy i kolana. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Maltańczyk trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Maltańczyk trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często dobrze odnajduje się w mieszkaniu, jeśli ma kontakt z opiekunem. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Maltańczyk nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Maltańczyk jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'maltanczyk';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-maltanczyk.svg', 'Maltańczyk - zdjęcie rasy', 'Maltańczyk - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'maltanczyk' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'maltanczyk' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Maltańczyk', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'maltanczyk' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'maltanczyk' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 180, 110, 300, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Yorkshire Terrier jest opisywany jako odważny, żywy i często bardziej pewny siebie, niż sugeruje rozmiar. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Brak zasad może prowadzić do szczekliwości i nerwowości. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób lubiących małe psy z charakterem i gotowych na konsekwentne wychowanie. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Yorkshire Terrier potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Yorkshire Terrier może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Długa sierść wymaga czesania albo regularnego strzyżenia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Potrzebuje małych, dobrze odmierzonych porcji i kontroli przysmaków. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, kolana i delikatną budowę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Yorkshire Terrier trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Yorkshire Terrier trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Wywodzi się z psów pracujących, dlatego ma sporo energii i temperamentu. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Yorkshire Terrier nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Yorkshire Terrier jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Małe psy często wymagają regularnej kontroli zębów i higieny jamy ustnej.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-stomatologiczne' WHERE b.slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'yorkshire-terrier';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-yorkshire-terrier.svg', 'Yorkshire Terrier - zdjęcie rasy', 'Yorkshire Terrier - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'yorkshire-terrier' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'yorkshire-terrier' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Yorkshire Terrier', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'yorkshire-terrier' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'yorkshire-terrier' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 216, 25, 80, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Jamnik jest opisywany jako uparty, bystry i często bardzo przywiązany do swoich ludzi. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Skoki, nadwaga i brak kontroli ruchu mogą obciążać kręgosłup. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów cierpliwych, którzy rozumieją niezależność psa myśliwskiego. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Jamnik potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Jamnik może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja zależy od odmiany sierści, ale zwykle nie jest skomplikowana. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Utrzymanie szczupłej sylwetki jest szczególnie ważne przy tej budowie. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na kręgosłup i wagę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Jamnik trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Jamnik trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Ma silny charakter i często lubi samodzielnie podejmować decyzje. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Jamnik nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Jamnik jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'high', 'Przy wydłużonej sylwetce warto ograniczać nadwagę i niepokojące obciążenia kręgosłupa.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-kregoslupem' WHERE b.slug = 'jamnik';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'jamnik';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-jamnik.svg', 'Jamnik - zdjęcie rasy', 'Jamnik - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'jamnik' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'jamnik' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Jamnik', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'jamnik' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'jamnik' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 180, 25, 80, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Chihuahua jest opisywany jako czujny, energiczny i silnie związany z opiekunem. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Delikatny rozmiar wymaga ostrożności w kontaktach z dziećmi i większymi psami. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób szukających małego psa, ale traktujących go jak psa, nie zabawkę. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Chihuahua potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Chihuahua może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja sierści jest prosta, ale trzeba dbać o zęby i pazury. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje są bardzo małe, więc łatwo przesadzić ze smakołykami. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, kolana i komfort termiczny. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Chihuahua trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Chihuahua trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Bywa bardzo odważny i potrzebuje spokojnej socjalizacji. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Chihuahua nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Chihuahua jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Małe psy często wymagają regularnej kontroli zębów i higieny jamy ustnej.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-stomatologiczne' WHERE b.slug = 'chihuahua';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'chihuahua';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-chihuahua.svg', 'Chihuahua - zdjęcie rasy', 'Chihuahua - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'chihuahua' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'chihuahua' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Chihuahua', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'chihuahua' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'chihuahua' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 180, 50, 150, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Cavalier King Charles Spaniel jest opisywany jako łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Źle znosi długą samotność i potrzebuje bliskości opiekuna. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla rodzin oraz osób szukających czułego psa do spokojnego, ale aktywnego domu. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Cavalier King Charles Spaniel potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Cavalier King Charles Spaniel może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Sierść wymaga czesania, a uszy regularnej kontroli. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto utrzymywać szczupłą sylwetkę i nie przesadzać z przysmakami. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, oczy, uszy i wagę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Cavalier King Charles Spaniel trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Cavalier King Charles Spaniel trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często dobrze sprawdza się jako pies rodzinny, jeśli ma odpowiedzialną opiekę. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Cavalier King Charles Spaniel nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Cavalier King Charles Spaniel jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto obserwować oczy i reagować na łzawienie, zaczerwienienie lub dyskomfort.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-oczu' WHERE b.slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części psów warto uwzględnić profilaktyczną kontrolę serca zgodnie z zaleceniami lekarza.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'cavalier-king-charles-spaniel';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-cavalier-king-charles-spaniel.svg', 'Cavalier King Charles Spaniel - zdjęcie rasy', 'Cavalier King Charles Spaniel - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'cavalier-king-charles-spaniel' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'cavalier-king-charles-spaniel' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Cavalier King Charles Spaniel', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'cavalier-king-charles-spaniel' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'cavalier-king-charles-spaniel' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.2, 2.0, 1.2, 90, 252, 25, 80, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Buldog francuski jest opisywany jako towarzyski, zabawny i zwykle mocno przywiązany do domowników. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Upał, forsowny ruch i nadwaga mogą mocno obniżać komfort psa. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów szukających psa miejskiego, którzy rozumieją ograniczenia ras krótkoczaszkowych. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Buldog francuski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Buldog francuski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako niska. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale fałdy skóry i uszy wymagają kontroli. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Ważna jest kontrola masy ciała i lekkostrawna dieta dopasowana do psa. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oddech, skórę, oczy i kręgosłup. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Buldog francuski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Buldog francuski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często nadrabia niewielki rozmiar dużą osobowością. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Buldog francuski nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Buldog francuski jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'high', 'U ras krótkoczaszkowych warto obserwować oddech, tolerancję wysiłku i komfort w upały.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-oddechowe' WHERE b.slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto pilnować porcji i smakołyków, bo nadwaga obciąża organizm.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Zmiany skórne, świąd lub łupież wymagają obserwacji i ewentualnej konsultacji.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-skorne' WHERE b.slug = 'buldog-francuski';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-buldog-francuski.svg', 'Buldog francuski - zdjęcie rasy', 'Buldog francuski - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'buldog-francuski' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'buldog-francuski' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Buldog francuski', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'buldog-francuski' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'buldog-francuski' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 200, 576, 25, 80, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Bokser jest opisywany jako energiczny, radosny i bardzo rodzinny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Młody bokser bywa impulsywny i potrzebuje nauki wyciszenia. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych opiekunów, którzy chcą psa blisko rodziny i lubią pracę z psem. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Bokser potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Bokser może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest prosta w pielęgnacji, ale pies potrzebuje ruchu i zasad. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje powinny wspierać aktywność bez nadwagi. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, stawy, skórę i tolerancję wysiłku. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Bokser trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Bokser trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Długo zachowuje szczenięcą energię i poczucie humoru. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Bokser nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Bokser jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'bokser';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części psów warto uwzględnić profilaktyczną kontrolę serca zgodnie z zaleceniami lekarza.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'bokser';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-bokser.svg', 'Bokser - zdjęcie rasy', 'Bokser - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'bokser' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'bokser' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Bokser', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'bokser' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'bokser' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 280, 1080, 25, 80, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Rottweiler jest opisywany jako pewny siebie, lojalny i wymagający odpowiedzialnego prowadzenia. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Siła i pewność siebie rasy wymagają konsekwencji oraz dobrej socjalizacji. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla doświadczonych opiekunów, którzy stawiają na szkolenie, spokój i kontrolę. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Rottweiler potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Rottweiler może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja jest łatwa, ale potrzeby szkoleniowe i ruchowe są duże. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Duży pies wymaga dobrze planowanej diety i kontroli masy. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, serce i prawidłową wagę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Rottweiler trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Rottweiler trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Może być spokojnym psem rodzinnym, ale nie jest rasą dla przypadkowego opiekuna. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Rottweiler nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Rottweiler jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'rottweiler';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części psów warto uwzględnić profilaktyczną kontrolę serca zgodnie z zaleceniami lekarza.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'rottweiler';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-rottweiler.svg', 'Rottweiler - zdjęcie rasy', 'Rottweiler - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'rottweiler' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'rottweiler' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Rottweiler', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'rottweiler' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'rottweiler' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 280, 990, 110, 300, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Berneński pies pasterski jest opisywany jako łagodny, cierpliwy i silnie związany z rodziną. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Rozmiar, sierść i krótsza średnia długość życia wymagają świadomej decyzji. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla domów z przestrzenią i opiekunów gotowych na koszty dużego psa. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Berneński pies pasterski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Berneński pies pasterski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Gęsta sierść wymaga regularnego czesania, szczególnie w okresie linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Koszty karmy są wyraźnie wyższe niż przy małych rasach. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, wagę i ogólną kondycję. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Berneński pies pasterski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Berneński pies pasterski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często jest spokojny, ale jako młody pies może być bardzo silny i nieporadny. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Berneński pies pasterski nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Berneński pies pasterski jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'bernenski-pies-pasterski';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-bernenski-pies-pasterski.svg', 'Berneński pies pasterski - zdjęcie rasy', 'Berneński pies pasterski - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'bernenski-pies-pasterski' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'bernenski-pies-pasterski' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Berneński pies pasterski', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'bernenski-pies-pasterski' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'bernenski-pies-pasterski' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 450, 110, 300, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Pudel jest opisywany jako inteligentny, wesoły i chętny do nauki. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Zaniedbana sierść szybko traci komfort i wymaga fachowej pielęgnacji. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów chcących psa rodzinnego, ale gotowych na regularny grooming. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Pudel potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Pudel może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Wymaga strzyżenia i systematycznego czesania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje zależą od odmiany wielkości, aktywności i wieku psa. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, uszy, zęby i stawy zależnie od wielkości. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Pudel trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Pudel trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Należy do bardzo pojętnych psów i często lubi naukę sztuczek. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Pudel nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Pudel jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'pudel';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'pudel';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-pudel.svg', 'Pudel - zdjęcie rasy', 'Pudel - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'pudel' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'pudel' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Pudel', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'pudel' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'pudel' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 96, 288, 110, 300, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Cocker Spaniel angielski jest opisywany jako radosny, wrażliwy i aktywny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Bez ruchu i zasad może stać się pobudliwy lub nadmiernie łakomy. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób lubiących spacery, pracę nosem i regularną pielęgnację. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Cocker Spaniel angielski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Cocker Spaniel angielski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Uszy i sierść wymagają systematycznej kontroli oraz czesania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto pilnować porcji, bo wiele spanieli ma bardzo dobry apetyt. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na uszy, oczy, skórę i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Cocker Spaniel angielski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Cocker Spaniel angielski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Zachował dużo cech psa pracującego, mimo rodzinnego wizerunku. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Cocker Spaniel angielski nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Cocker Spaniel angielski jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto pilnować porcji i smakołyków, bo nadwaga obciąża organizm.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'cocker-spaniel-angielski';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-cocker-spaniel-angielski.svg', 'Cocker Spaniel angielski - zdjęcie rasy', 'Cocker Spaniel angielski - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'cocker-spaniel-angielski' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'cocker-spaniel-angielski' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Cocker Spaniel angielski', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'cocker-spaniel-angielski' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'cocker-spaniel-angielski' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 200, 810, 50, 150, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Akita inu jest opisywany jako spokojny, dumny i często zdystansowany wobec obcych. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Wymaga bardzo świadomej socjalizacji i nie zawsze lubi inne psy. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla doświadczonych opiekunów, którzy szanują niezależność rasy. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Akita inu potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Akita inu może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Gęsta sierść linieje sezonowo i wymaga wtedy intensywnego czesania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Dieta powinna wspierać umiarkowaną aktywność i prawidłową masę. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na skórę, oczy, stawy i reakcje organizmu na dietę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Akita inu trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Akita inu trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Ma silną osobowość i nie sprawdza się jako pies prowadzony wyłącznie siłą. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Akita inu nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Akita inu jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'akita-inu';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto obserwować oczy i reagować na łzawienie, zaczerwienienie lub dyskomfort.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-oczu' WHERE b.slug = 'akita-inu';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Zmiany skórne, świąd lub łupież wymagają obserwacji i ewentualnej konsultacji.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-skorne' WHERE b.slug = 'akita-inu';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-akita-inu.svg', 'Akita inu - zdjęcie rasy', 'Akita inu - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'akita-inu' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'akita-inu' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Akita inu', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'akita-inu' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'akita-inu' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 128, 540, 110, 300, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Samoyed jest opisywany jako towarzyski, pogodny i energiczny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Gęsta sierść i potrzeba aktywności są dużym zobowiązaniem. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych rodzin gotowych na dużo sierści, ruchu i kontaktu z psem. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Samoyed potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Samoyed może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Wymaga regularnego czesania, szczególnie podczas intensywnego linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje powinny pasować do aktywności i pory roku. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, oczy, skórę i komfort w upały. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Samoyed trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Samoyed trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Słynie z charakterystycznego uśmiechu, ale za urokiem stoi realna potrzeba pracy. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Samoyed nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Samoyed jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'samoyed';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto obserwować oczy i reagować na łzawienie, zaczerwienienie lub dyskomfort.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-oczu' WHERE b.slug = 'samoyed';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-samoyed.svg', 'Samoyed - zdjęcie rasy', 'Samoyed - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'samoyed' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'samoyed' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Samoyed', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'samoyed' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'samoyed' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 128, 504, 50, 150, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Siberian Husky jest opisywany jako niezależny, energiczny i bardzo wytrzymały. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Silna potrzeba ruchu i skłonność do ucieczek bywają trudne dla początkujących. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób aktywnych, które rozumieją psy północne i potrafią zabezpieczyć teren. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Siberian Husky potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Siberian Husky może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Sierść wymaga czesania, zwłaszcza podczas linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Aktywny husky potrzebuje dobrej diety, ale porcje zależą od realnego wysiłku. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, stawy i kondycję przy intensywnym ruchu. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Siberian Husky trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Siberian Husky trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często lepiej współpracuje przy zadaniach ruchowych niż przy monotonnych komendach. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Siberian Husky nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Siberian Husky jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto obserwować oczy i reagować na łzawienie, zaczerwienienie lub dyskomfort.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-oczu' WHERE b.slug = 'siberian-husky';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-siberian-husky.svg', 'Siberian Husky - zdjęcie rasy', 'Siberian Husky - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'siberian-husky' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'siberian-husky' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Siberian Husky', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'siberian-husky' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'siberian-husky' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 90, 180, 25, 80, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Jack Russell Terrier jest opisywany jako odważny, szybki i pełen pomysłów. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Nuda, brak zasad i pogoń za bodźcami szybko prowadzą do problemów. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych opiekunów, którzy chcą małego psa sportowego, a nie kanapowca. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Jack Russell Terrier potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Jack Russell Terrier może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja sierści jest prosta, ale potrzeby ruchu są duże. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Mały rozmiar nie oznacza małych potrzeb energetycznych przy dużej aktywności. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, kolana i urazy wynikające z intensywności. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Jack Russell Terrier trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Jack Russell Terrier trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Potrafi pracować z ogromną determinacją mimo niewielkiego wzrostu. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Jack Russell Terrier nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Jack Russell Terrier jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'jack-russell-terrier';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-jack-russell-terrier.svg', 'Jack Russell Terrier - zdjęcie rasy', 'Jack Russell Terrier - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'jack-russell-terrier' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'jack-russell-terrier' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Jack Russell Terrier', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'jack-russell-terrier' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'jack-russell-terrier' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 320, 900, 25, 80, 95, 60, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Cane Corso jest opisywany jako spokojny, czujny i mocno związany z rodziną. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Wymaga odpowiedzialnej socjalizacji, kontroli i przewidywania sytuacji. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla doświadczonych opiekunów, którzy potrafią prowadzić dużego psa bez nerwowości. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Cane Corso potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Cane Corso może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale rozmiar podnosi koszty utrzymania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Duży pies wymaga dobrej jakości diety i kontroli tempa wzrostu u młodych. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, żołądek, serce i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Cane Corso trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Cane Corso trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Najlepiej funkcjonuje przy spokojnym, konsekwentnym opiekunie. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Cane Corso nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Cane Corso jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Warto zwracać uwagę na prawidłową masę ciała i komfort ruchu, szczególnie u większych psów.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-ze-stawami' WHERE b.slug = 'cane-corso';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części psów warto uwzględnić profilaktyczną kontrolę serca zgodnie z zaleceniami lekarza.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'cane-corso';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-cane-corso.svg', 'Cane Corso - zdjęcie rasy', 'Cane Corso - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'cane-corso' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'cane-corso' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Cane Corso', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'cane-corso' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'cane-corso' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 90, 180, 110, 300, 70, 40, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Sznaucer miniaturowy jest opisywany jako czujny, bystry i często bardzo komunikatywny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Może być szczekliwy, jeśli nie nauczy się spokojnej reakcji na bodźce. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z piesem.', 10 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób szukających małego psa z charakterem i gotowych na regularne trymowanie. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Sznaucer miniaturowy potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Sznaucer miniaturowy może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i piesa bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Sierść wymaga trymowania lub regularnej pielęgnacji u groomera. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto pilnować wagi i jakości przysmaków. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na skórę, zęby, wagę i układ moczowy. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Sznaucer miniaturowy trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Sznaucer miniaturowy trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często świetnie łączy czujność z życiem rodzinnym. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Sznaucer miniaturowy nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Sznaucer miniaturowy jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Małe psy często wymagają regularnej kontroli zębów i higieny jamy ustnej.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-stomatologiczne' WHERE b.slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Zmiany skórne, świąd lub łupież wymagają obserwacji i ewentualnej konsultacji.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-skorne' WHERE b.slug = 'sznaucer-miniaturowy';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-sznaucer-miniaturowy.svg', 'Sznaucer miniaturowy - zdjęcie rasy', 'Sznaucer miniaturowy - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'sznaucer-miniaturowy' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'sznaucer-miniaturowy' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Sznaucer miniaturowy', 'dry_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'sznaucer-miniaturowy' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'sznaucer-miniaturowy' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 120, 320, 50, 150, 55, 35, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Ragdoll jest opisywany jako łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Nie powinien być traktowany jak pluszowa zabawka, mimo łagodnego zachowania. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z kotem.', 10 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla domów szukających spokojnego kota rodzinnego, który lubi bliskość. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Ragdoll potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Ragdoll może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i kota bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Półdługa sierść wymaga regularnego czesania, ale zwykle nie jest bardzo trudna. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto pilnować porcji, bo spokojniejszy tryb życia sprzyja nadwadze. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, wagę i ogólną kondycję. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Ragdoll trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Ragdoll trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Nazwa odnosi się do skłonności wielu kotów tej rasy do rozluźniania się na rękach. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Ragdoll nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Ragdoll jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części kotów warto pamiętać o kontrolach kardiologicznych, jeśli zaleci je lekarz.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'ragdoll';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Spokojniejszy tryb życia może sprzyjać przybieraniu na wadze.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'ragdoll';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-ragdoll.svg', 'Ragdoll - zdjęcie rasy', 'Ragdoll - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'ragdoll' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'ragdoll' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Ragdoll', 'wet_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'ragdoll' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'ragdoll' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 120, 320, 110, 300, 55, 35, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Kot syberyjski jest opisywany jako ciekawski, sprawny i zwykle towarzyski. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Potrzebuje wspinania, zabawy i zajęcia, nie tylko miski i legowiska. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z kotem.', 10 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą aktywnego kota i są gotowi na pielęgnację sierści. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Kot syberyjski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Kot syberyjski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i kota bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Gęsta sierść wymaga czesania, szczególnie w okresie linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Dieta powinna wspierać umiarkowaną aktywność i dobrą masę mięśniową. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, wagę i stan sierści. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Kot syberyjski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Kot syberyjski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Jest zwinny i często lubi wysokie punkty obserwacyjne. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Kot syberyjski nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Kot syberyjski jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części kotów warto pamiętać o kontrolach kardiologicznych, jeśli zaleci je lekarz.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'kot-syberyjski';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-kot-syberyjski.svg', 'Kot syberyjski - zdjęcie rasy', 'Kot syberyjski - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'kot-syberyjski' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'kot-syberyjski' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Kot syberyjski', 'wet_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'kot-syberyjski' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'kot-syberyjski' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.2, 2.0, 1.2, 120, 320, 110, 300, 55, 35, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Kot perski jest opisywany jako łagodny, stateczny i ceniący przewidywalne otoczenie. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Pielęgnacja sierści i okolic oczu jest stałym obowiązkiem. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z kotem.', 10 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów gotowych na codzienną pielęgnację i spokojny tryb życia kota. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Kot perski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Kot perski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i kota bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako niska. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Długa sierść wymaga systematycznego czesania, inaczej łatwo tworzą się kołtuny. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Spokojniejszy kot potrzebuje dobrze odmierzonych porcji. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, oddech, zęby, nerki i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Kot perski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Kot perski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Jest kojarzony ze spokojem, ale nadal potrzebuje zabawy dostosowanej do możliwości. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Kot perski nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Kot perski jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U kotów tej rasy warto zwracać uwagę na ogólną profilaktykę i badania kontrolne.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-nerek' WHERE b.slug = 'kot-perski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Budowa pyska może sprzyjać łzawieniu i podrażnieniom oczu u części kotów.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-oczu' WHERE b.slug = 'kot-perski';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Spokojniejszy tryb życia może sprzyjać przybieraniu na wadze.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'kot-perski';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-kot-perski.svg', 'Kot perski - zdjęcie rasy', 'Kot perski - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'kot-perski' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'kot-perski' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Kot perski', 'wet_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'kot-perski' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'kot-perski' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.6, 2.0, 1.2, 120, 320, 25, 80, 55, 35, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Bengal jest opisywany jako aktywny, ciekawski i bardzo potrzebujący bodźców. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Nuda może prowadzić do frustracji i niszczenia otoczenia. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z kotem.', 10 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą kota interaktywnego i potrafią zapewnić mu zajęcie. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Bengal potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Bengal może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i kota bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale potrzeby zabawy i wspinania są wysokie. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Aktywny kot potrzebuje diety dopasowanej do ruchu i masy ciała. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na trawienie, serce i ogólną kondycję. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Bengal trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Bengal trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często lubi zabawy z wodą i zadania wymagające sprytu. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Bengal nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Bengal jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części kotów warto pamiętać o kontrolach kardiologicznych, jeśli zaleci je lekarz.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'bengal';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'low', 'Warto regularnie kontrolować sylwetkę i dopasować porcje do aktywności.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-z-nadwaga' WHERE b.slug = 'bengal';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-bengal.svg', 'Bengal - zdjęcie rasy', 'Bengal - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'bengal' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'bengal' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Bengal', 'wet_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'bengal' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'bengal' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);

INSERT OR REPLACE INTO calculator_profiles (breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier, monthly_food_cost_min_pln, monthly_food_cost_max_pln, grooming_cost_min_pln, grooming_cost_max_pln, vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes)
SELECT id, 1.4, 2.0, 1.2, 120, 320, 50, 150, 55, 35, 'Dane orientacyjne/testowe wymagające późniejszej weryfikacji redakcyjnej.' FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Sfinks jest opisywany jako towarzyski, ciepłolubny i bardzo kontaktowy. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Brak sierści nie oznacza braku pielęgnacji. Dlatego przed wyborem rasy warto uczciwie ocenić czas, cierpliwość i gotowość do pracy z kotem.', 10 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą kota blisko człowieka i rozumieją potrzeby skóry oraz temperatury. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Nie jest to rasa dla każdego. Jeśli domowy rytm nie pasuje do poziomu aktywności, pielęgnacji albo samodzielności tej rasy, lepiej rozważyć spokojniejszą alternatywę.', 20 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Sfinks potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ocena do mieszkania w Futrio ma charakter orientacyjny. Przy tej rasie ważne są aktywność, możliwość wyciszenia i unikanie przeciążania zwierzęcia bodźcami.', 30 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Sfinks może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Nawet łagodna rasa potrzebuje granic. Warto uczyć zarówno dziecko, jak i kota bezpiecznych, przewidywalnych zachowań zamiast liczyć, że wszystko ułoży się samo.', 40 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Dobrze sprawdzają się aktywności dopasowane do rasy: spacery, zabawy węchowe, proste ćwiczenia i spokojna nauka. Zbyt intensywny wysiłek bez regeneracji też nie jest dobrym rozwiązaniem.', 50 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Skóra wymaga regularnej kontroli, delikatnego mycia i ochrony przed chłodem oraz słońcem. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Warto od początku oswajać zwierzę z dotykiem, szczotką, kontrolą uszu, zębów i pazurów. Dzięki temu pielęgnacja jest mniej stresująca dla opiekuna i zwierzęcia.', 60 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Utrzymanie temperatury i aktywność mogą wpływać na zapotrzebowanie energetyczne. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Najbezpieczniej obserwować sylwetkę, energię i reakcję na karmę. Przy problemach trawiennych, nadwadze albo chorobie dietę warto skonsultować z lekarzem weterynarii.', 70 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na skórę, serce, zęby i komfort termiczny. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Najważniejsze są profilaktyka, kontrola masy ciała, obserwacja zachowania i regularne konsultacje z lekarzem weterynarii, gdy pojawiają się niepokojące objawy.', 80 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Sfinks trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Wydatki mogą różnić się między miastami i konkretnymi opiekunami. Kalkulator kosztów na stronie rasy pomaga oszacować budżet, ale nie obejmuje nagłych chorób ani dużych jednorazowych wydatków.', 90 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Sfinks trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Drugim błędem jest brak konsekwencji: zbyt dużo smakołyków, za mało odpoczynku albo pomijanie nauki podstaw. Lepiej budować dobre nawyki od pierwszych dni.', 100 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często szuka ciepłych miejsc i bliskiego kontaktu z opiekunem. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Warto patrzeć na rasę nie tylko przez zdjęcia, lecz także przez potrzeby. Dzięki temu łatwiej wybrać zwierzę pasujące do domu i uniknąć rozczarowania.', 110 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'faq', 'FAQ', 'P: Czy Sfinks nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Czy Sfinks jest dobry dla rodzin z dziećmi?
O: Może być, jeśli dzieci uczą się spokojnego kontaktu, a dorosły nadzoruje wspólne sytuacje.

P: Czy ta rasa jest łatwa dla początkujących?
O: Poziom trudności zależy od doświadczenia opiekuna, temperamentu konkretnego zwierzęcia i gotowości do nauki.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty są orientacyjne i zależą od karmy, profilaktyki, pielęgnacji oraz miejsca zamieszkania.', 120 FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'U części kotów warto pamiętać o kontrolach kardiologicznych, jeśli zaleci je lekarz.' FROM breeds b JOIN health_conditions h ON h.slug = 'choroby-serca' WHERE b.slug = 'sfinks';

INSERT OR REPLACE INTO breed_health_conditions (breed_id, condition_id, risk_level, note)
SELECT b.id, h.id, 'medium', 'Skóra wymaga regularnej obserwacji i delikatnej pielęgnacji.' FROM breeds b JOIN health_conditions h ON h.slug = 'problemy-skorne' WHERE b.slug = 'sfinks';

INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT id, '/images/breeds/placeholder-sfinks.svg', 'Sfinks - zdjęcie rasy', 'Sfinks - placeholder zdjęcia rasy', 'placeholder', 1, 10 FROM breeds WHERE slug = 'sfinks' AND NOT EXISTS (SELECT 1 FROM breed_images bi JOIN breeds bx ON bx.id = bi.breed_id WHERE bx.slug = 'sfinks' AND bi.is_primary = 1);

INSERT INTO affiliate_links (breed_id, label, category, url, merchant, network, priority, is_active, anchor_text, description, placement, disclosure, button_label)
SELECT id, 'Polecane produkty dla rasy Sfinks', 'wet_food', 'https://example.com/link-afiliacyjny-placeholder', 'Placeholder', 'placeholder', 100, 1, 'Sprawdź polecane produkty dla tej rasy', 'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.', 'feeding_section', 'Link może mieć charakter afiliacyjny.', 'Zobacz polecane produkty' FROM breeds WHERE slug = 'sfinks' AND NOT EXISTS (SELECT 1 FROM affiliate_links al JOIN breeds bx ON bx.id = al.breed_id WHERE bx.slug = 'sfinks' AND al.url = 'https://example.com/link-afiliacyjny-placeholder' AND al.is_active = 1);
