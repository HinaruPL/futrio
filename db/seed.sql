PRAGMA foreign_keys = ON;

INSERT INTO breeds (
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
  status
) VALUES
(
  'Labrador Retriever',
  'labrador-retriever',
  'dog',
  'Labrador Retriever to przyjazny, energiczny pies rodzinny, który dobrze odnajduje się w aktywnym domu.',
  'Labrador Retriever jest jedną z najpopularniejszych ras psów rodzinnych. Zwykle jest łagodny, towarzyski i chętny do współpracy z człowiekiem. Wymaga jednak regularnego ruchu, kontroli wagi i dobrze dobranej diety.',
  25,
  36,
  54,
  57,
  10,
  12,
  'high',
  'medium',
  'easy',
  5,
  3,
  1200,
  1700,
  'Labrador Retriever - opis rasy, charakter, żywienie i koszty',
  'Sprawdź, jaki jest Labrador Retriever: charakter, waga, wzrost, zdrowie, żywienie, koszty utrzymania i przydatne kalkulatory dla opiekuna.',
  'Labrador Retriever - opis rasy, charakter i koszty utrzymania',
  'published'
),
(
  'Golden Retriever',
  'golden-retriever',
  'dog',
  'Golden Retriever to łagodny, rodzinny pies o dużej potrzebie kontaktu z człowiekiem.',
  'Golden Retriever jest psem towarzyskim, cierpliwym i zwykle bardzo dobrze odnajduje się w rodzinach. Potrzebuje regularnego ruchu, pielęgnacji sierści i rozsądnego żywienia.',
  25,
  34,
  51,
  61,
  10,
  12,
  'high',
  'high',
  'easy',
  5,
  3,
  1200,
  1650,
  'Golden Retriever - opis rasy, charakter, żywienie i koszty',
  'Poznaj rasę Golden Retriever: charakter, potrzeby, zdrowie, żywienie, koszty miesięczne i praktyczne wskazówki dla opiekuna.',
  'Golden Retriever - opis rasy, charakter i koszty utrzymania',
  'published'
),
(
  'Owczarek niemiecki',
  'owczarek-niemiecki',
  'dog',
  'Owczarek niemiecki to inteligentny, aktywny pies pracujący, który potrzebuje ruchu i konsekwentnego prowadzenia.',
  'Owczarek niemiecki jest rasą wszechstronną, bardzo inteligentną i silnie związaną z opiekunem. Wymaga aktywności fizycznej, szkolenia oraz dbałości o stawy i prawidłową masę ciała.',
  22,
  40,
  55,
  65,
  9,
  13,
  'high',
  'medium',
  'medium',
  4,
  2,
  1300,
  1900,
  'Owczarek niemiecki - opis rasy, charakter, zdrowie i koszty',
  'Sprawdź, dla kogo jest Owczarek niemiecki: charakter, aktywność, żywienie, najczęstsze problemy zdrowotne i koszty utrzymania.',
  'Owczarek niemiecki - opis rasy, charakter i koszty utrzymania',
  'published'
),
(
  'Maine Coon',
  'maine-coon',
  'cat',
  'Maine Coon to duży, towarzyski kot o półdługiej sierści i spokojnym charakterze.',
  'Maine Coon jest jedną z największych ras kotów domowych. Zwykle jest łagodny, kontaktowy i ciekawski. Wymaga regularnej pielęgnacji sierści oraz kontroli masy ciała.',
  4,
  10,
  25,
  40,
  12,
  15,
  'medium',
  'high',
  'easy',
  5,
  4,
  250,
  450,
  'Maine Coon - opis rasy, charakter, żywienie i koszty',
  'Poznaj kota Maine Coon: charakter, waga, pielęgnacja, żywienie, zdrowie, koszty utrzymania i praktyczne wskazówki.',
  'Maine Coon - opis rasy, charakter i koszty utrzymania',
  'published'
),
(
  'Kot brytyjski krótkowłosy',
  'kot-brytyjski-krotkowlosy',
  'cat',
  'Kot brytyjski krótkowłosy to spokojny, zrównoważony kot o gęstej sierści i masywnej budowie.',
  'Kot brytyjski krótkowłosy jest ceniony za spokojny charakter, niezależność i łagodne usposobienie. Ma tendencję do przybierania na wadze, dlatego wymaga rozsądnego żywienia i kontroli porcji.',
  3.5,
  8,
  25,
  35,
  12,
  16,
  'low',
  'medium',
  'easy',
  4,
  5,
  220,
  400,
  'Kot brytyjski krótkowłosy - opis rasy, charakter i koszty',
  'Sprawdź, jaki jest kot brytyjski krótkowłosy: charakter, waga, pielęgnacja, żywienie, zdrowie i koszty utrzymania.',
  'Kot brytyjski krótkowłosy - opis rasy, charakter i koszty utrzymania',
  'published'
);

INSERT INTO health_conditions (
  name,
  slug,
  description
) VALUES
(
  'Dysplazja stawów biodrowych',
  'dysplazja-stawow-biodrowych',
  'Problem ortopedyczny, który może dotyczyć szczególnie większych ras psów. Wymaga kontroli masy ciała, ruchu dopasowanego do możliwości zwierzęcia i konsultacji z lekarzem weterynarii.'
),
(
  'Otyłość',
  'otylosc',
  'Nadmierna masa ciała zwiększa ryzyko problemów ze stawami, sercem i metabolizmem. Profilaktyka opiera się na kontroli porcji i regularnej aktywności.'
),
(
  'Alergie skórne',
  'alergie-skorne',
  'Alergie mogą objawiać się świądem, zaczerwienieniem skóry, łupieżem lub problemami z sierścią. Wymagają diagnostyki i dobrze dobranej diety lub pielęgnacji.'
),
(
  'Kardiomiopatia przerostowa',
  'kardiomiopatia-przerostowa',
  'Choroba serca spotykana u niektórych kotów. Wymaga diagnostyki weterynaryjnej i regularnej kontroli stanu zdrowia.'
),
(
  'Problemy ze stawami',
  'problemy-ze-stawami',
  'Ogólna grupa problemów ruchowych, które mogą pojawiać się szczególnie u dużych, cięższych lub starszych zwierząt.'
);

INSERT INTO breed_health_conditions (
  breed_id,
  condition_id,
  risk_level,
  note
)
SELECT b.id, h.id, 'high', 'U większych psów warto kontrolować masę ciała i dbać o rozsądne obciążenie stawów.'
FROM breeds b, health_conditions h
WHERE b.slug IN ('labrador-retriever', 'golden-retriever', 'owczarek-niemiecki')
  AND h.slug = 'dysplazja-stawow-biodrowych';

INSERT INTO breed_health_conditions (
  breed_id,
  condition_id,
  risk_level,
  note
)
SELECT b.id, h.id, 'medium', 'Rasa może mieć skłonność do przybierania na wadze, dlatego ważna jest kontrola porcji.'
FROM breeds b, health_conditions h
WHERE b.slug IN ('labrador-retriever', 'golden-retriever', 'kot-brytyjski-krotkowlosy', 'maine-coon')
  AND h.slug = 'otylosc';

INSERT INTO breed_health_conditions (
  breed_id,
  condition_id,
  risk_level,
  note
)
SELECT b.id, h.id, 'medium', 'W razie świądu, zmian skórnych lub problemów z sierścią warto skonsultować się z lekarzem weterynarii.'
FROM breeds b, health_conditions h
WHERE b.slug IN ('golden-retriever', 'labrador-retriever')
  AND h.slug = 'alergie-skorne';

INSERT INTO breed_health_conditions (
  breed_id,
  condition_id,
  risk_level,
  note
)
SELECT b.id, h.id, 'medium', 'U tej rasy warto pamiętać o profilaktycznej kontroli serca.'
FROM breeds b, health_conditions h
WHERE b.slug = 'maine-coon'
  AND h.slug = 'kardiomiopatia-przerostowa';

INSERT INTO calculator_profiles (
  breed_id,
  base_activity_multiplier,
  puppy_multiplier,
  senior_multiplier,
  monthly_food_cost_min_pln,
  monthly_food_cost_max_pln,
  grooming_cost_min_pln,
  grooming_cost_max_pln,
  vet_cost_monthly_estimate_pln,
  accessories_monthly_estimate_pln,
  notes
)
SELECT
  id,
  CASE
    WHEN activity_level = 'high' THEN 1.6
    WHEN activity_level = 'medium' THEN 1.4
    ELSE 1.2
  END,
  2.0,
  1.2,
  CASE
    WHEN species = 'dog' THEN 180
    ELSE 120
  END,
  CASE
    WHEN species = 'dog' THEN 420
    ELSE 280
  END,
  CASE
    WHEN grooming_level = 'high' THEN 120
    WHEN grooming_level = 'medium' THEN 60
    ELSE 30
  END,
  CASE
    WHEN grooming_level = 'high' THEN 250
    WHEN grooming_level = 'medium' THEN 140
    ELSE 80
  END,
  CASE
    WHEN species = 'dog' THEN 80
    ELSE 70
  END,
  CASE
    WHEN species = 'dog' THEN 60
    ELSE 45
  END,
  'Dane testowe do kalkulatorów. Wartości należy później zweryfikować redakcyjnie.'
FROM breeds;

INSERT INTO affiliate_links (
  breed_id,
  label,
  category,
  url,
  merchant,
  network,
  priority,
  is_active
)
SELECT
  id,
  'Polecana karma dla tej rasy',
  CASE
    WHEN species = 'dog' THEN 'dry_food'
    ELSE 'wet_food'
  END,
  'https://example.com/link-afiliacyjny-placeholder',
  'Placeholder',
  'Placeholder',
  100,
  1
FROM breeds;

INSERT INTO content_blocks (
  entity_type,
  entity_id,
  block_key,
  heading,
  body,
  sort_order
)
SELECT
  'breed',
  id,
  'feeding',
  'Żywienie',
  'Żywienie tej rasy powinno być dopasowane do wieku, masy ciała, aktywności i stanu zdrowia. Podane wartości mają charakter orientacyjny i nie zastępują konsultacji z lekarzem weterynarii.',
  30
FROM breeds;

INSERT INTO content_blocks (
  entity_type,
  entity_id,
  block_key,
  heading,
  body,
  sort_order
)
SELECT
  'breed',
  id,
  'costs',
  'Koszty utrzymania',
  'Miesięczne koszty utrzymania zależą od jakości karmy, profilaktyki zdrowotnej, pielęgnacji i indywidualnych potrzeb zwierzęcia.',
  40
FROM breeds;

INSERT INTO crossbreeds (
  breed_a_id,
  breed_b_id,
  slug,
  name,
  short_description,
  character_description,
  appearance_description,
  care_description,
  health_description,
  ai_generated_notes,
  editorial_status,
  meta_title,
  meta_description,
  h1
)
SELECT
  a.id,
  b.id,
  'labrador-retriever-golden-retriever-mix',
  'Labrador Retriever i Golden Retriever mix',
  'Krzyżówka Labradora i Golden Retrievera może łączyć rodzinny charakter, energię i dużą potrzebę kontaktu z człowiekiem.',
  'Taka krzyżówka może być towarzyska, łagodna i chętna do nauki, ale będzie wymagać codziennej aktywności oraz konsekwentnego prowadzenia.',
  'Wygląd może być różny, ale często można spodziewać się średnio-dużego psa o mocnej budowie i gęstej sierści.',
  'Pielęgnacja zależy od typu sierści. Warto przygotować się na regularne szczotkowanie i kontrolę masy ciała.',
  'Potencjalne ryzyka zdrowotne mogą obejmować problemy ze stawami i nadwagę, dlatego ważna jest profilaktyka i ruch dopasowany do wieku psa.',
  'Treść testowa. Wymaga późniejszej weryfikacji redakcyjnej.',
  'draft',
  'Labrador Retriever i Golden Retriever mix - charakter, wygląd i opieka',
  'Sprawdź, jaki może być mix Labradora i Golden Retrievera: charakter, wygląd, pielęgnacja, zdrowie i koszty utrzymania.',
  'Labrador Retriever i Golden Retriever mix - opis krzyżówki'
FROM breeds a, breeds b
WHERE a.slug = 'labrador-retriever'
  AND b.slug = 'golden-retriever';
