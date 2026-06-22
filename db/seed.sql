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


WITH sections(slug, section_key, heading, body, sort_order) AS (
  VALUES
  ('labrador-retriever', 'character', 'Charakter', 'Labrador zwykle bardzo mocno szuka kontaktu z człowiekiem. To pies pogodny i chętny do współpracy, ale nie powinien być traktowany jak spokojna ozdoba kanapy. Bez ruchu, prostych zadań i jasnych zasad szybko zaczyna szukać zajęcia na własną łapę.', 10),
  ('labrador-retriever', 'for_whom', 'Dla kogo będzie dobrym wyborem', 'Labrador pasuje do osób, które chcą aktywnego psa rodzinnego i mają czas na codzienne spacery, naukę oraz zabawę. Dobrze odnajduje się u opiekunów cierpliwych, konsekwentnych i gotowych pilnować diety. Nie jest najlepszym wyborem dla kogoś, kto często zostawia psa samego na długie godziny.', 20),
  ('labrador-retriever', 'home_and_apartment', 'Dom i mieszkanie', 'Może mieszkać w bloku, jeśli ma zapewnione porządne wyjścia i spokojne miejsce do odpoczynku. Ogród jest dodatkiem, ale nie zastępuje spacerów ani kontaktu z opiekunem. W małym mieszkaniu warto szczególnie zadbać o naukę odpoczywania po aktywności.', 30),
  ('labrador-retriever', 'children_and_family', 'Dzieci i rodzina', 'Labrador często dobrze dogaduje się z dziećmi, bo jest towarzyski i łagodny. Trzeba jednak pamiętać, że młody pies tej rasy bywa silny, skoczny i bardzo entuzjastyczny. Kontakty z dziećmi powinny być spokojnie nadzorowane, a pies musi mieć możliwość odejścia.', 40),
  ('labrador-retriever', 'activity', 'Aktywność', 'To rasa o dużej potrzebie ruchu. Najlepiej sprawdzają się dłuższe spacery, aportowanie, pływanie, proste ćwiczenia węchowe i nauka komend. Samo wypuszczenie do ogrodu zwykle nie wystarcza, bo labrador potrzebuje także zajęcia głowy.', 50),
  ('labrador-retriever', 'grooming', 'Pielęgnacja', 'Krótka sierść labradora nie jest trudna, ale pies potrafi mocno linieć. Regularne szczotkowanie pomaga ograniczyć sierść w domu i pozwala szybko zauważyć problemy skórne. Warto kontrolować uszy, pazury i stan łap po spacerach.', 60),
  ('labrador-retriever', 'feeding', 'Żywienie', 'Labradory często mają bardzo dobry apetyt, dlatego łatwo je przekarmić. Porcje warto odmierzać, a smakołyki wliczać w dzienną dawkę jedzenia. Utrzymanie prawidłowej masy ciała jest ważne szczególnie dla stawów i ogólnej kondycji.', 70),
  ('labrador-retriever', 'health', 'Zdrowie', 'U labradorów warto zwracać uwagę na masę ciała, stawy, uszy i skórę. Informacje na stronie mają charakter orientacyjny i nie zastępują konsultacji z lekarzem weterynarii. Przy niepokojących objawach najlepiej skonsultować psa ze specjalistą.', 80),
  ('labrador-retriever', 'costs', 'Koszty utrzymania', 'Koszty utrzymania labradora zależą głównie od jakości karmy, profilaktyki weterynaryjnej, akcesoriów i ewentualnej pracy z trenerem. To średnio duży pies, więc żywienie i opieka mogą być wyraźnym miesięcznym wydatkiem. Warto zaplanować budżet także na badania kontrolne.', 90),
  ('labrador-retriever', 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest zakładanie, że labrador sam z siebie będzie grzeczny, bo rasa ma opinię rodzinnej. Bez nauki chodzenia na smyczy, kontroli emocji i rozsądnej diety łatwo o problemy. Drugim błędem jest zbyt mało aktywności umysłowej.', 100),
  ('labrador-retriever', 'fun_facts', 'Ciekawostki', 'Labradory wywodzą się z psów pracujących przy wodzie, dlatego wiele z nich uwielbia pływać i nosić przedmioty w pysku. Ta cecha może być świetną bazą do zabawy, ale wymaga zasad, żeby pies nie podkradał wszystkiego z domu.', 110),
  ('labrador-retriever', 'faq', 'FAQ', 'Czy labrador nadaje się do mieszkania? Tak, jeśli ma dużo ruchu i kontaktu z opiekunem. Czy mocno linieje? Tak, szczególnie sezonowo. Czy to dobry pierwszy pies? Może być, ale wymaga konsekwencji, nauki i kontroli jedzenia.', 120),

  ('golden-retriever', 'character', 'Charakter', 'Golden Retriever jest zwykle łagodny, kontaktowy i bardzo nastawiony na człowieka. Lubi współpracę i dobrze reaguje na spokojne szkolenie. Nie jest jednak psem bezobsługowym, bo jego wrażliwość i energia wymagają czasu, cierpliwości oraz codziennego kontaktu.', 10),
  ('golden-retriever', 'for_whom', 'Dla kogo będzie dobrym wyborem', 'Golden pasuje do rodzin i osób aktywnych, które chcą psa blisko człowieka. Najlepiej odnajduje się tam, gdzie jest miejsce na spacery, naukę i wspólne zajęcia. Nie będzie dobrym wyborem dla kogoś, kto oczekuje psa stale pozostającego w tle.', 20),
  ('golden-retriever', 'home_and_apartment', 'Dom i mieszkanie', 'Golden może mieszkać w mieszkaniu, jeśli jego potrzeby ruchu i kontaktu są spełnione. Potrzebuje wygodnego miejsca do odpoczynku i regularnego wychodzenia poza najbliższy trawnik. W domu z ogrodem nadal potrzebuje spacerów i pracy z opiekunem.', 30),
  ('golden-retriever', 'children_and_family', 'Dzieci i rodzina', 'Rasa często dobrze funkcjonuje w rodzinie, ale relacje z dziećmi trzeba prowadzić rozsądnie. Golden bywa cierpliwy, lecz młody pies może być żywiołowy i nieuważny. Dzieci powinny wiedzieć, kiedy dać psu spokój.', 40),
  ('golden-retriever', 'activity', 'Aktywność', 'Golden potrzebuje regularnego ruchu i zadań, które pozwalają mu pracować z człowiekiem. Spacery, aport, ćwiczenia węchowe i nauka komend pomagają utrzymać go w dobrej formie. Zbyt mało zajęcia może prowadzić do frustracji i niszczenia rzeczy.', 50),
  ('golden-retriever', 'grooming', 'Pielęgnacja', 'Sierść goldena wymaga regularnego szczotkowania, zwłaszcza w okresie linienia. Warto kontrolować miejsca za uszami, ogon i portki, gdzie mogą tworzyć się kołtuny. Po spacerach w błocie lub wodzie dobrze sprawdzić stan skóry i uszu.', 60),
  ('golden-retriever', 'feeding', 'Żywienie', 'Golden ma skłonność do przybierania na wadze, dlatego porcje powinny być odmierzone. Dietę warto dopasować do wieku, aktywności i stanu zdrowia. Smakołyki treningowe są pomocne, ale nie powinny wymykać się spod kontroli.', 70),
  ('golden-retriever', 'health', 'Zdrowie', 'U goldenów warto zwracać uwagę na stawy, skórę, uszy i prawidłową masę ciała. Informacje zdrowotne są orientacyjne i nie zastępują konsultacji weterynaryjnej. Regularna profilaktyka pomaga szybciej wychwycić niepokojące zmiany.', 80),
  ('golden-retriever', 'costs', 'Koszty utrzymania', 'Koszty utrzymania obejmują karmę, pielęgnację sierści, profilaktykę zdrowotną i akcesoria. Przy tej rasie warto uwzględnić także ewentualne wsparcie groomera lub trenera. Wydatki mogą rosnąć przy alergiach, problemach skórnych lub nadwadze.', 90),
  ('golden-retriever', 'common_mistakes', 'Częste błędy opiekunów', 'Najczęstszy błąd to traktowanie goldena jak psa, który zawsze sam będzie spokojny i posłuszny. Bez pracy nad emocjami, przywołaniem i chodzeniem na smyczy może stać się trudny w codzienności. Drugim błędem jest odkładanie pielęgnacji sierści.', 100),
  ('golden-retriever', 'fun_facts', 'Ciekawostki', 'Golden Retriever powstał jako pies aportujący, dlatego wiele psów tej rasy lubi nosić zabawki i pracować z człowiekiem. Ta potrzeba może być świetnym sposobem na budowanie relacji, jeśli opiekun prowadzi ją spokojnie i konsekwentnie.', 110),
  ('golden-retriever', 'faq', 'FAQ', 'Czy golden nadaje się dla rodziny? Często tak, jeśli rodzina ma czas na ruch i naukę. Czy wymaga pielęgnacji? Tak, sierść trzeba regularnie szczotkować. Czy może mieszkać w bloku? Tak, jeśli codziennie wychodzi na wartościowe spacery.', 120),

  ('owczarek-niemiecki', 'character', 'Charakter', 'Owczarek niemiecki to pies inteligentny, czujny i mocno związany z opiekunem. Lubi jasne zadania i przewidywalne zasady. Bez prowadzenia może stać się nadmiernie pobudzony albo zbyt samodzielny w pilnowaniu otoczenia.', 10),
  ('owczarek-niemiecki', 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To rasa dla osób, które chcą aktywnie pracować z psem i lubią szkolenie. Owczarek potrzebuje opiekuna konsekwentnego, spokojnego i gotowego na codzienne ćwiczenia. Nie jest najlepszym wyborem dla kogoś, kto szuka psa bez dużego zaangażowania.', 20),
  ('owczarek-niemiecki', 'home_and_apartment', 'Dom i mieszkanie', 'Owczarek może mieszkać w domu lub mieszkaniu, ale potrzebuje ruchu, zajęcia i wyciszenia. Sam ogród nie rozwiązuje jego potrzeb, a czasem wzmacnia czujność. Ważne jest spokojne miejsce, w którym pies może odpocząć po aktywności.', 30),
  ('owczarek-niemiecki', 'children_and_family', 'Dzieci i rodzina', 'Dobrze prowadzony owczarek może być lojalnym psem rodzinnym, ale jego siła i czujność wymagają odpowiedzialności dorosłych. Dzieci nie powinny prowadzić go bez nadzoru. Od początku warto uczyć psa spokojnych reakcji na domowy ruch.', 40),
  ('owczarek-niemiecki', 'activity', 'Aktywność', 'Rasa potrzebuje zarówno ruchu, jak i pracy umysłowej. Spacery, trening posłuszeństwa, tropienie lub ćwiczenia węchowe pomagają wykorzystać jego potencjał. Zbyt mało zajęcia może prowadzić do napięcia, szczekania i problemów z kontrolą emocji.', 50),
  ('owczarek-niemiecki', 'grooming', 'Pielęgnacja', 'Pielęgnacja zależy od typu sierści, ale regularne szczotkowanie jest ważne przez cały rok. W okresie linienia sierści może być bardzo dużo. Warto kontrolować pazury, uszy i stan skóry po intensywnych spacerach.', 60),
  ('owczarek-niemiecki', 'feeding', 'Żywienie', 'Dieta owczarka powinna wspierać prawidłową masę ciała i kondycję mięśni. Przy dużej aktywności porcje muszą być dopasowane do realnego wysiłku, a nie tylko do wielkości psa. Nadwaga może dodatkowo obciążać stawy.', 70),
  ('owczarek-niemiecki', 'health', 'Zdrowie', 'U owczarków szczególnie ważna jest profilaktyka stawów, kontrola ruchu w okresie wzrostu i obserwacja sposobu poruszania się. Informacje są ogólne i nie zastępują konsultacji z lekarzem weterynarii. Przy kulawiźnie lub bólu potrzebna jest fachowa ocena.', 80),
  ('owczarek-niemiecki', 'costs', 'Koszty utrzymania', 'Koszty mogą obejmować dobrej jakości karmę, szkolenie, profilaktykę weterynaryjną i solidne akcesoria. Przy tej rasie warto zaplanować budżet na pracę z trenerem, zwłaszcza w pierwszych latach. Oszczędzanie na socjalizacji często odbija się na codziennym komforcie.', 90),
  ('owczarek-niemiecki', 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest budowanie pobudzenia zamiast spokojnej kontroli. Owczarek nie potrzebuje ciągłego nakręcania, tylko mądrego prowadzenia i odpoczynku. Problemem bywa też zbyt późna socjalizacja z ludźmi, psami i nowymi miejscami.', 100),
  ('owczarek-niemiecki', 'fun_facts', 'Ciekawostki', 'Owczarki niemieckie są cenione w wielu rodzajach pracy, bo szybko się uczą i dobrze czytają człowieka. Ta inteligencja jest zaletą, ale oznacza też, że pies szybko uczy się złych nawyków, jeśli zasady są niejasne.', 110),
  ('owczarek-niemiecki', 'faq', 'FAQ', 'Czy owczarek niemiecki jest dobry dla początkujących? Może być trudny bez wsparcia i planu szkolenia. Czy potrzebuje dużo ruchu? Tak, ale równie ważna jest praca umysłowa. Czy nadaje się do rodziny? Tak, jeśli jest odpowiedzialnie prowadzony.', 120),

  ('maine-coon', 'character', 'Charakter', 'Maine Coon jest zwykle spokojny, towarzyski i ciekawski. Często lubi być blisko człowieka, ale nie zawsze jest typowym kotem na kolana. Potrzebuje kontaktu, zabawy i przestrzeni, w której może obserwować dom z wyższego miejsca.', 10),
  ('maine-coon', 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób, które chcą dużego, kontaktowego kota i są gotowe na regularną pielęgnację. Maine Coon dobrze odnajduje się w domu, gdzie opiekun ma czas na zabawę i obserwuje zmiany w zdrowiu. Nie jest najlepszy dla kogoś, kto chce kota całkowicie bezobsługowego.', 20),
  ('maine-coon', 'home_and_apartment', 'Dom i mieszkanie', 'Maine Coon może mieszkać w mieszkaniu, jeśli ma drapaki, półki, miejsca obserwacyjne i codzienną zabawę. Ze względu na rozmiar potrzebuje stabilnych akcesoriów. Balkon lub okna powinny być dobrze zabezpieczone.', 30),
  ('maine-coon', 'children_and_family', 'Dzieci i rodzina', 'Maine Coony często dobrze funkcjonują w rodzinie, ale trzeba szanować ich granice. Dzieci powinny wiedzieć, że kota nie wolno nosić na siłę ani przeszkadzać mu w odpoczynku. Spokojne zabawy wędką zwykle sprawdzają się lepiej niż gonitwy.', 40),
  ('maine-coon', 'activity', 'Aktywność', 'To kot umiarkowanie aktywny, który lubi zabawę i eksplorację. Warto planować krótkie sesje łowieckie z wędką, zabawki na jedzenie i miejsca do wspinania. Brak zajęcia może sprzyjać nudzie i podjadaniu.', 50),
  ('maine-coon', 'grooming', 'Pielęgnacja', 'Półdługa sierść wymaga regularnego czesania, szczególnie na brzuchu, portkach i za uszami. Lepiej robić to krótko, ale systematycznie, niż czekać na kołtuny. Przyzwyczajanie do pielęgnacji warto zacząć spokojnie i stopniowo.', 60),
  ('maine-coon', 'feeding', 'Żywienie', 'Żywienie Maine Coona powinno uwzględniać jego rozmiar, aktywność i skłonność do przybierania na wadze. Porcje warto kontrolować, nawet jeśli kot wydaje się stale zainteresowany jedzeniem. Dobre nawodnienie i jakość diety są ważne w codziennej opiece.', 70),
  ('maine-coon', 'health', 'Zdrowie', 'U tej rasy często zwraca się uwagę na profilaktykę serca, stawów i masy ciała. Informacje są orientacyjne i nie zastępują opieki lekarza weterynarii. Regularne kontrole pomagają szybciej zauważyć problemy, które u dużego kota mogą długo pozostać mało widoczne.', 80),
  ('maine-coon', 'costs', 'Koszty utrzymania', 'Koszty utrzymania Maine Coona mogą być wyższe niż u mniejszych kotów ze względu na ilość karmy, większe akcesoria i pielęgnację. Warto uwzględnić solidny drapak, większą kuwetę i profilaktyczne badania. To rasa, przy której planowanie budżetu ma duże znaczenie.', 90),
  ('maine-coon', 'common_mistakes', 'Częste błędy opiekunów', 'Częsty błąd to kupowanie zbyt małych lub niestabilnych akcesoriów. Drugim jest odkładanie czesania do momentu, gdy pojawią się kołtuny. Warto też nie przekarmiać kota tylko dlatego, że jest duży.', 100),
  ('maine-coon', 'fun_facts', 'Ciekawostki', 'Maine Coon jest jedną z największych ras kotów domowych, ale jego charakter często bywa łagodny i społeczny. Wiele kotów tej rasy wydaje ciche, nietypowe dźwięki i chętnie obserwuje codzienne czynności opiekuna.', 110),
  ('maine-coon', 'faq', 'FAQ', 'Czy Maine Coon nadaje się do mieszkania? Tak, jeśli ma przestrzeń pionową i zabawę. Czy wymaga czesania? Tak, regularnie. Czy to kot dla dzieci? Może być, jeśli dzieci szanują jego granice i nie traktują go jak zabawki.', 120),

  ('kot-brytyjski-krotkowlosy', 'character', 'Charakter', 'Kot brytyjski krótkowłosy jest zwykle spokojny, zrównoważony i niezależny. Lubi obecność człowieka, ale często sam decyduje, kiedy chce bliższego kontaktu. Nie należy mylić jego spokoju z potrzebą całkowitego braku zabawy.', 10),
  ('kot-brytyjski-krotkowlosy', 'for_whom', 'Dla kogo będzie dobrym wyborem', 'Brytyjczyk pasuje do osób, które cenią spokojne koty i potrafią uszanować ich dystans. Dobrze odnajduje się w przewidywalnym domu. Nie będzie idealny dla kogoś, kto oczekuje kota stale noszonego na rękach.', 20),
  ('kot-brytyjski-krotkowlosy', 'home_and_apartment', 'Dom i mieszkanie', 'To rasa dobrze pasująca do mieszkania, jeśli kot ma drapak, miejsca odpoczynku i codzienną porcję zabawy. Ze względu na masywną budowę warto zadbać o stabilne legowiska i bezpieczne wskakiwanie. Nuda i brak ruchu mogą sprzyjać nadwadze.', 30),
  ('kot-brytyjski-krotkowlosy', 'children_and_family', 'Dzieci i rodzina', 'Kot brytyjski może żyć w rodzinie, ale potrzebuje spokojnego traktowania. Dzieci powinny rozumieć, że kot ma prawo odejść i nie musi lubić noszenia. Najlepiej sprawdzają się krótkie, delikatne zabawy zamiast natarczywego kontaktu.', 40),
  ('kot-brytyjski-krotkowlosy', 'activity', 'Aktywność', 'Aktywność tej rasy bywa raczej umiarkowana lub niska, ale codzienna zabawa nadal jest potrzebna. Kilka krótkich sesji z wędką albo zabawką na jedzenie pomaga utrzymać kondycję. Warto zachęcać kota do ruchu bez zmuszania go na siłę.', 50),
  ('kot-brytyjski-krotkowlosy', 'grooming', 'Pielęgnacja', 'Gęsta, krótka sierść wymaga regularnego szczotkowania, szczególnie w okresie linienia. Pielęgnacja nie jest skomplikowana, ale systematyczność pomaga ograniczyć sierść w domu. Warto też kontrolować pazury i stan zębów.', 60),
  ('kot-brytyjski-krotkowlosy', 'feeding', 'Żywienie', 'Brytyjczyki mają tendencję do przybierania na wadze, dlatego porcje powinny być dobrze odmierzone. Dieta musi pasować do wieku, aktywności i stanu zdrowia kota. Regularne ważenie pomaga zauważyć zmiany wcześniej niż sama obserwacja sylwetki.', 70),
  ('kot-brytyjski-krotkowlosy', 'health', 'Zdrowie', 'U kotów tej rasy warto pilnować masy ciała, kondycji zębów i regularnych kontroli weterynaryjnych. Informacje mają charakter ogólny i nie zastępują konsultacji z lekarzem weterynarii. Każda nagła zmiana apetytu, zachowania lub wagi wymaga uwagi.', 80),
  ('kot-brytyjski-krotkowlosy', 'costs', 'Koszty utrzymania', 'Koszty obejmują karmę, żwirek, profilaktykę, akcesoria i ewentualne wizyty kontrolne. Przy skłonności do nadwagi oszczędzanie na jakości diety może szybko okazać się pozorne. Warto planować stały budżet na podstawową opiekę.', 90),
  ('kot-brytyjski-krotkowlosy', 'common_mistakes', 'Częste błędy opiekunów', 'Częsty błąd to uznanie, że spokojny kot nie potrzebuje zabawy. Drugim jest przekarmianie, bo masywna sylwetka bywa mylona z prawidłową wagą. Warto też nie zmuszać brytyjczyka do kontaktu, którego akurat nie chce.', 100),
  ('kot-brytyjski-krotkowlosy', 'fun_facts', 'Ciekawostki', 'Kot brytyjski krótkowłosy jest kojarzony z okrągłą głową, gęstą sierścią i spokojnym spojrzeniem. Choć wygląda pluszowo, zwykle bardziej ceni stabilną obecność człowieka niż intensywne noszenie na rękach.', 110),
  ('kot-brytyjski-krotkowlosy', 'faq', 'FAQ', 'Czy kot brytyjski jest spokojny? Zwykle tak, ale nadal potrzebuje zabawy. Czy lubi noszenie? Często nie przepada za długim noszeniem. Czy łatwo tyje? Tak, dlatego ważna jest kontrola porcji i regularny ruch.', 120)
)
INSERT OR REPLACE INTO breed_content_sections (
  breed_id,
  section_key,
  heading,
  body,
  sort_order
)
SELECT
  b.id,
  s.section_key,
  s.heading,
  s.body,
  s.sort_order
FROM sections s
JOIN breeds b ON b.slug = s.slug;


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

-- Quality upgrade: history, structured FAQ and registry recognition placeholders.
INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Akita inu wywodzi się z Japonii i była rozwijana jako pies odważny, niezależny oraz silnie związany z opiekunem. W historii rasy istotne były samodzielność, czujność i stabilny charakter.

Z czasem Akita stała się psem rodzinnym, ale zachowała dużą niezależność. Historia rasy tłumaczy, dlaczego wymaga spokojnego, doświadczonego prowadzenia i szacunku dla jej granic.', 5
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Akita inu jest opisywany jako spokojny, dumny i często zdystansowany wobec obcych. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Akita inu to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Akita inu źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla doświadczonych opiekunów, którzy szanują niezależność rasy. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Akita inu będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Akita inu potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Akita inu potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Akita inu lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Akita inu może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Akita inu w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Akita inu potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Gęsta sierść linieje sezonowo i wymaga wtedy intensywnego czesania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Akita inu potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Dieta powinna wspierać umiarkowaną aktywność i prawidłową masę. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Akita inu wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na skórę, oczy, stawy i reakcje organizmu na dietę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Akita inu powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Akita inu trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Koszty utrzymania rasy Akita inu zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Akita inu trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Akita inu jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Ma silną osobowość i nie sprawdza się jako pies prowadzony wyłącznie siłą. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Akita inu ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Beagle wywodzi się z psów gończych, które pracowały nosem i w grupie. W rozwoju rasy ważne były wytrzymałość, samodzielność w tropieniu oraz pogodny, społeczny charakter.

Z czasem Beagle stał się popularnym psem rodzinnym, ale jego łowieckie korzenie nadal są widoczne. Dlatego opiekun powinien pamiętać o pracy węchowej, zabezpieczeniu spacerów i konsekwentnym przywołaniu.', 5
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Beagle jest opisywany jako wesoły, ciekawski i mocno kierujący się nosem. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Beagle to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Beagle źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób, które akceptują samodzielność psa gończego i lubią długie spacery. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Beagle będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Beagle potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Beagle potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Beagle lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Beagle może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Beagle często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Beagle ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale uszy wymagają regularnej kontroli. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Beagle ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Ma dobry apetyt, dlatego porcje warto odmierzać konsekwentnie. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Beagle wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na wagę, uszy i kondycję kręgosłupa. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Beagle powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Beagle trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Beagle zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Beagle trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Beagle jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Potrafi długo analizować zapachy, więc praca nosem jest dla niego naturalną nagrodą. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Beagle ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Bengal był rozwijany jako kot domowy o dzikim wyglądzie i dużej aktywności. W historii rasy ważne było połączenie efektownego umaszczenia z temperamentem możliwym do prowadzenia w domu.

Z czasem Bengal stał się popularny wśród osób szukających bardzo aktywnego kota. Historia rasy wyjaśnia potrzebę zabawy, wspinania, pracy umysłowej i dobrze zabezpieczonego środowiska.', 5
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Bengal jest opisywany jako aktywny, ciekawski i bardzo potrzebujący bodźców. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Bengal to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Bengal może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą kota interaktywnego i potrafią zapewnić mu zajęcie. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Bengal będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Bengal nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Bengal potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Bengal lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Bengal może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Bengal w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Bengal ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale potrzeby zabawy i wspinania są wysokie. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Bengal ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Aktywny kot potrzebuje diety dopasowanej do ruchu i masy ciała. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Bengal wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na trawienie, serce i ogólną kondycję. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Bengal powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Bengal trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Bengal zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Bengal trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Bengal jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często lubi zabawy z wodą i zadania wymagające sprytu. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Bengal ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Berneński pies pasterski wywodzi się z psów gospodarskich, które pomagały przy pracy w trudniejszych warunkach. Ceniono mocną budowę, spokój i gotowość do współpracy.

Z czasem rasa stała się popularna jako pies rodzinny. Jej historia tłumaczy potrzebę bliskości z człowiekiem, umiarkowanej aktywności, troski o stawy i kontroli masy ciała.', 5
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Berneński pies pasterski jest opisywany jako łagodny, cierpliwy i silnie związany z rodziną. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Berneński pies pasterski to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Berneński pies pasterski źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla domów z przestrzenią i opiekunów gotowych na koszty dużego psa. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Berneński pies pasterski będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Berneński pies pasterski potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Berneński pies pasterski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Berneński pies pasterski lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Berneński pies pasterski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Berneński pies pasterski często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Berneński pies pasterski potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Gęsta sierść wymaga regularnego czesania, szczególnie w okresie linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Berneński pies pasterski wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Koszty karmy są wyraźnie wyższe niż przy małych rasach. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Berneński pies pasterski wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, wagę i ogólną kondycję. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Berneński pies pasterski powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Berneński pies pasterski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Berneński pies pasterski zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Berneński pies pasterski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Berneński pies pasterski jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często jest spokojny, ale jako młody pies może być bardzo silny i nieporadny. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Berneński pies pasterski ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Bokser wywodzi się z psów użytkowych o mocnej budowie, odwadze i dużej energii. W rozwoju rasy ważne były czujność, sprawność oraz gotowość do współpracy z człowiekiem.

Z czasem Bokser stał się psem rodzinnym i sportowym. Historia rasy tłumaczy jego żywiołowość, potrzebę ruchu, bliskości i konsekwentnego prowadzenia od młodego wieku.', 5
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Bokser jest opisywany jako energiczny, radosny i bardzo rodzinny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Bokser to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Bokser źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych opiekunów, którzy chcą psa blisko rodziny i lubią pracę z psem. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Bokser będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Bokser potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Bokser potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Bokser lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Bokser może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Bokser często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Bokser ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest prosta w pielęgnacji, ale pies potrzebuje ruchu i zasad. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Bokser ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje powinny wspierać aktywność bez nadwagi. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Bokser wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, stawy, skórę i tolerancję wysiłku. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Bokser powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Bokser trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Bokser zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Bokser trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Bokser jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Długo zachowuje szczenięcą energię i poczucie humoru. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Bokser ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Border Collie wywodzi się z psów pasterskich pracujących przy stadach, gdzie liczyły się refleks, samodzielność i ścisła współpraca z człowiekiem. Rasa była rozwijana przede wszystkim pod kątem użytkowości, a nie wyłącznie wyglądu.

Z czasem Border Collie trafił także do sportu i domów aktywnych opiekunów. Jego historia bardzo wyraźnie pokazuje, dlaczego potrzebuje nie tylko biegania, ale też zadań, nauki i pracy umysłowej.', 5
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Border Collie jest opisywany jako bardzo inteligentny, uważny i nastawiony na pracę z człowiekiem. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Border Collie to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Border Collie źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych opiekunów, którzy lubią naukę, spacery i zadania węchowe. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Border Collie będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Border Collie potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Border Collie potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Border Collie lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Border Collie może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Border Collie często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Border Collie ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Regularne czesanie i kontrola podszerstka zwykle wystarczają. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Border Collie potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje powinny uwzględniać dużą aktywność i częsty trening. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Border Collie wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, oczy i regenerację po intensywnym ruchu. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Border Collie powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Border Collie trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Koszty utrzymania rasy Border Collie zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Border Collie trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Border Collie jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często świetnie radzi sobie w sportach kynologicznych, ale potrzebuje także nauki odpoczywania. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Border Collie ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Buldog francuski był rozwijany jako niewielki pies miejski i towarzyszący. W historii rasy utrwaliły się kompaktowa budowa, przywiązanie do człowieka i spokojniejszy styl życia.

Z czasem rasa stała się bardzo popularna w mieszkaniach. Jej historia nie zwalnia jednak opiekuna z troski o oddech, temperaturę, masę ciała i rozsądny poziom aktywności.', 5
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Buldog francuski jest opisywany jako towarzyski, zabawny i zwykle mocno przywiązany do domowników. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Buldog francuski to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Buldog francuski źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów szukających psa miejskiego, którzy rozumieją ograniczenia ras krótkoczaszkowych. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Buldog francuski będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Buldog francuski potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Buldog francuski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Buldog francuski może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Buldog francuski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Buldog francuski często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako niska. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Buldog francuski najlepiej funkcjonuje przy spokojniejszej, przewidywalnej rutynie. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale fałdy skóry i uszy wymagają kontroli. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Buldog francuski ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Ważna jest kontrola masy ciała i lekkostrawna dieta dopasowana do psa. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Buldog francuski wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oddech, skórę, oczy i kręgosłup. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Buldog francuski powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Buldog francuski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Buldog francuski zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Buldog francuski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Buldog francuski jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często nadrabia niewielki rozmiar dużą osobowością. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Buldog francuski ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Cane Corso wywodzi się z dużych psów stróżujących i użytkowych, u których ważne były siła, czujność i stabilny temperament. Rasa była rozwijana do pracy wymagającej odwagi oraz opanowania.

Dziś Cane Corso wymaga doświadczonego opiekuna i bardzo dobrej socjalizacji. Historia rasy pokazuje, dlaczego tak ważne są konsekwencja, spokojne zasady i odpowiedzialne prowadzenie.', 5
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Cane Corso jest opisywany jako spokojny, czujny i mocno związany z rodziną. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Cane Corso to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Cane Corso źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla doświadczonych opiekunów, którzy potrafią prowadzić dużego psa bez nerwowości. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Cane Corso będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Cane Corso potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Cane Corso potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Cane Corso lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Cane Corso może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Cane Corso w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Cane Corso potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Krótka sierść jest łatwa, ale rozmiar podnosi koszty utrzymania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Cane Corso ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Duży pies wymaga dobrej jakości diety i kontroli tempa wzrostu u młodych. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Cane Corso wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, żołądek, serce i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Cane Corso powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Cane Corso trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Cane Corso zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Cane Corso trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Cane Corso jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Najlepiej funkcjonuje przy spokojnym, konsekwentnym opiekunie. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Cane Corso ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Cavalier King Charles Spaniel był rozwijany jako pies do towarzystwa, związany z domem i opiekunem. W historii rasy ważna była łagodność, kontaktowość i przyjazny wygląd.

Dziś Cavalier nadal najlepiej odnajduje się blisko ludzi. Historia rasy tłumaczy jego potrzebę kontaktu, delikatnego prowadzenia i regularnej profilaktyki zdrowotnej.', 5
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Cavalier King Charles Spaniel jest opisywany jako łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Cavalier King Charles Spaniel to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Cavalier King Charles Spaniel źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla rodzin oraz osób szukających czułego psa do spokojnego, ale aktywnego domu. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Cavalier King Charles Spaniel będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Cavalier King Charles Spaniel potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Cavalier King Charles Spaniel potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Cavalier King Charles Spaniel może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Cavalier King Charles Spaniel może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Cavalier King Charles Spaniel często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Cavalier King Charles Spaniel potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Sierść wymaga czesania, a uszy regularnej kontroli. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Cavalier King Charles Spaniel potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto utrzymywać szczupłą sylwetkę i nie przesadzać z przysmakami. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Cavalier King Charles Spaniel wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, oczy, uszy i wagę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Cavalier King Charles Spaniel powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Cavalier King Charles Spaniel trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Koszty utrzymania rasy Cavalier King Charles Spaniel zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Cavalier King Charles Spaniel trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Cavalier King Charles Spaniel jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często dobrze sprawdza się jako pies rodzinny, jeśli ma odpowiedzialną opiekę. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Cavalier King Charles Spaniel ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Chihuahua wywodzi się z małych psów do towarzystwa, cenionych za czujność i silną więź z człowiekiem. Rasa była rozwijana jako niewielki, kontaktowy pies domowy.

Z czasem Chihuahua stała się popularna w miastach, ale jej historia nie oznacza braku potrzeb. To pies, który wymaga socjalizacji, ochrony przed urazami i traktowania jak pełnoprawny pies, a nie ozdoba.', 5
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Chihuahua jest opisywany jako czujny, energiczny i silnie związany z opiekunem. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Chihuahua to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Chihuahua źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób szukających małego psa, ale traktujących go jak psa, nie zabawkę. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Chihuahua będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Chihuahua potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Chihuahua potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Chihuahua może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Chihuahua może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Chihuahua w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Chihuahua potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja sierści jest prosta, ale trzeba dbać o zęby i pazury. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Chihuahua ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje są bardzo małe, więc łatwo przesadzić ze smakołykami. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Chihuahua wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, kolana i komfort termiczny. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Chihuahua powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Chihuahua trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Chihuahua zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Chihuahua trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Chihuahua jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Bywa bardzo odważny i potrzebuje spokojnej socjalizacji. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Chihuahua ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Cocker Spaniel angielski był rozwijany jako pies myśliwski pracujący blisko człowieka. W historii rasy ceniono energię, węch, radość pracy i kontaktowość.

Z czasem Cocker stał się również psem rodzinnym. Jego historia tłumaczy, dlaczego potrzebuje spacerów, pracy nosem, pielęgnacji uszu i sierści oraz łagodnego, konsekwentnego wychowania.', 5
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Cocker Spaniel angielski jest opisywany jako radosny, wrażliwy i aktywny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Cocker Spaniel angielski to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Cocker Spaniel angielski źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób lubiących spacery, pracę nosem i regularną pielęgnację. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Cocker Spaniel angielski będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Cocker Spaniel angielski potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Cocker Spaniel angielski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Cocker Spaniel angielski lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Cocker Spaniel angielski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Cocker Spaniel angielski często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Cocker Spaniel angielski ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Uszy i sierść wymagają systematycznej kontroli oraz czesania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Cocker Spaniel angielski wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto pilnować porcji, bo wiele spanieli ma bardzo dobry apetyt. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Cocker Spaniel angielski wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na uszy, oczy, skórę i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Cocker Spaniel angielski powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Cocker Spaniel angielski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Cocker Spaniel angielski zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Cocker Spaniel angielski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Cocker Spaniel angielski jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Zachował dużo cech psa pracującego, mimo rodzinnego wizerunku. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Cocker Spaniel angielski ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Golden Retriever był rozwijany jako pies aportujący, pracujący blisko człowieka i dobrze radzący sobie w terenie. W selekcji ważne były łagodność, chęć współpracy i umiejętność spokojnego przynoszenia zdobyczy.

Z czasem rasa coraz częściej trafiała do domów rodzinnych, a także do pracy terapeutycznej i asystującej. Jej historia pokazuje, że za łagodnym wyglądem stoi pies aktywny, społeczny i potrzebujący regularnego zajęcia.', 5
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Golden Retriever jest zwykle łagodny, kontaktowy i bardzo nastawiony na człowieka. Lubi współpracę i dobrze reaguje na spokojne szkolenie. Nie jest jednak psem bezobsługowym, bo jego wrażliwość i energia wymagają czasu, cierpliwości oraz codziennego kontaktu.

Golden Retriever to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Golden Retriever źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'Golden pasuje do rodzin i osób aktywnych, które chcą psa blisko człowieka. Najlepiej odnajduje się tam, gdzie jest miejsce na spacery, naukę i wspólne zajęcia. Nie będzie dobrym wyborem dla kogoś, kto oczekuje psa stale pozostającego w tle.

Golden Retriever będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Golden Retriever potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'Golden może mieszkać w mieszkaniu, jeśli jego potrzeby ruchu i kontaktu są spełnione. Potrzebuje wygodnego miejsca do odpoczynku i regularnego wychodzenia poza najbliższy trawnik. W domu z ogrodem nadal potrzebuje spacerów i pracy z opiekunem.

Golden Retriever lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'Rasa często dobrze funkcjonuje w rodzinie, ale relacje z dziećmi trzeba prowadzić rozsądnie. Golden bywa cierpliwy, lecz młody pies może być żywiołowy i nieuważny. Dzieci powinny wiedzieć, kiedy dać psu spokój.

Golden Retriever często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Golden potrzebuje regularnego ruchu i zadań, które pozwalają mu pracować z człowiekiem. Spacery, aport, ćwiczenia węchowe i nauka komend pomagają utrzymać go w dobrej formie. Zbyt mało zajęcia może prowadzić do frustracji i niszczenia rzeczy.

Golden Retriever ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Sierść goldena wymaga regularnego szczotkowania, zwłaszcza w okresie linienia. Warto kontrolować miejsca za uszami, ogon i portki, gdzie mogą tworzyć się kołtuny. Po spacerach w błocie lub wodzie dobrze sprawdzić stan skóry i uszu.

Golden Retriever wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Golden ma skłonność do przybierania na wadze, dlatego porcje powinny być odmierzone. Dietę warto dopasować do wieku, aktywności i stanu zdrowia. Smakołyki treningowe są pomocne, ale nie powinny wymykać się spod kontroli.

Golden Retriever wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'U goldenów warto zwracać uwagę na stawy, skórę, uszy i prawidłową masę ciała. Informacje zdrowotne są orientacyjne i nie zastępują konsultacji weterynaryjnej. Regularna profilaktyka pomaga szybciej wychwycić niepokojące zmiany.

Profilaktyka u rasy Golden Retriever powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania obejmują karmę, pielęgnację sierści, profilaktykę zdrowotną i akcesoria. Przy tej rasie warto uwzględnić także ewentualne wsparcie groomera lub trenera. Wydatki mogą rosnąć przy alergiach, problemach skórnych lub nadwadze.

Koszty utrzymania rasy Golden Retriever zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Najczęstszy błąd to traktowanie goldena jak psa, który zawsze sam będzie spokojny i posłuszny. Bez pracy nad emocjami, przywołaniem i chodzeniem na smyczy może stać się trudny w codzienności. Drugim błędem jest odkładanie pielęgnacji sierści.

Najczęstszym błędem przy rasie Golden Retriever jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Golden Retriever powstał jako pies aportujący, dlatego wiele psów tej rasy lubi nosić zabawki i pracować z człowiekiem. Ta potrzeba może być świetnym sposobem na budowanie relacji, jeśli opiekun prowadzi ją spokojnie i konsekwentnie.

Golden Retriever ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Jack Russell Terrier wywodzi się z małych terierów pracujących, u których liczyły się odwaga, refleks i samodzielność. Rasa była rozwijana jako pies energiczny, szybki i wytrwały.

Dziś Jack Russell często mieszka w domu jako pies rodzinny, ale nadal ma temperament psa użytkowego. Historia rasy wyjaśnia potrzebę ruchu, zadań i konsekwentnego prowadzenia.', 5
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Jack Russell Terrier jest opisywany jako odważny, szybki i pełen pomysłów. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Jack Russell Terrier to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Jack Russell Terrier źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych opiekunów, którzy chcą małego psa sportowego, a nie kanapowca. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Jack Russell Terrier będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Jack Russell Terrier potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Jack Russell Terrier potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Jack Russell Terrier lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Jack Russell Terrier może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Jack Russell Terrier w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Jack Russell Terrier ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja sierści jest prosta, ale potrzeby ruchu są duże. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Jack Russell Terrier ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Mały rozmiar nie oznacza małych potrzeb energetycznych przy dużej aktywności. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Jack Russell Terrier wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, kolana i urazy wynikające z intensywności. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Jack Russell Terrier powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Jack Russell Terrier trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Jack Russell Terrier zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Jack Russell Terrier trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Jack Russell Terrier jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Potrafi pracować z ogromną determinacją mimo niewielkiego wzrostu. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Jack Russell Terrier ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Jamnik był rozwijany jako pies myśliwski do pracy blisko ziemi i w norach. Charakterystyczna sylwetka wiąże się z użytkową historią rasy, a nie tylko z wyglądem.

Dziś jamnik często żyje jako pies rodzinny, ale zachowuje samodzielność i upór. Historia rasy tłumaczy potrzebę ostrożności przy kręgosłupie, kontroli wagi i konsekwentnego wychowania.', 5
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Jamnik jest opisywany jako uparty, bystry i często bardzo przywiązany do swoich ludzi. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Jamnik to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Jamnik źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów cierpliwych, którzy rozumieją niezależność psa myśliwskiego. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Jamnik będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Jamnik potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Jamnik potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Jamnik może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Jamnik może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Jamnik w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Jamnik potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja zależy od odmiany sierści, ale zwykle nie jest skomplikowana. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Jamnik ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Utrzymanie szczupłej sylwetki jest szczególnie ważne przy tej budowie. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Jamnik wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na kręgosłup i wagę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Jamnik powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Jamnik trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Jamnik zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Jamnik trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Jamnik jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Ma silny charakter i często lubi samodzielnie podejmować decyzje. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Jamnik ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Kot brytyjski krótkowłosy wywodzi się z linii kotów domowych rozwijanych na Wyspach Brytyjskich. W selekcji utrwalano mocną budowę, gęstą krótką sierść i zrównoważony temperament.

Z czasem rasa stała się symbolem spokojnego kota domowego, ale nie oznacza to braku potrzeb. Historia tej rasy dobrze tłumaczy jej niezależność, przywiązanie do rutyny oraz skłonność do spokojniejszego trybu życia.', 5
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Kot brytyjski krótkowłosy jest zwykle spokojny, zrównoważony i niezależny. Lubi obecność człowieka, ale często sam decyduje, kiedy chce bliższego kontaktu. Nie należy mylić jego spokoju z potrzebą całkowitego braku zabawy.

Kot brytyjski krótkowłosy to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Kot brytyjski krótkowłosy może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'Brytyjczyk pasuje do osób, które cenią spokojne koty i potrafią uszanować ich dystans. Dobrze odnajduje się w przewidywalnym domu. Nie będzie idealny dla kogoś, kto oczekuje kota stale noszonego na rękach.

Kot brytyjski krótkowłosy będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Kot brytyjski krótkowłosy nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'To rasa dobrze pasująca do mieszkania, jeśli kot ma drapak, miejsca odpoczynku i codzienną porcję zabawy. Ze względu na masywną budowę warto zadbać o stabilne legowiska i bezpieczne wskakiwanie. Nuda i brak ruchu mogą sprzyjać nadwadze.

Kot brytyjski krótkowłosy może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'Kot brytyjski może żyć w rodzinie, ale potrzebuje spokojnego traktowania. Dzieci powinny rozumieć, że kot ma prawo odejść i nie musi lubić noszenia. Najlepiej sprawdzają się krótkie, delikatne zabawy zamiast natarczywego kontaktu.

Kot brytyjski krótkowłosy często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Aktywność tej rasy bywa raczej umiarkowana lub niska, ale codzienna zabawa nadal jest potrzebna. Kilka krótkich sesji z wędką albo zabawką na jedzenie pomaga utrzymać kondycję. Warto zachęcać kota do ruchu bez zmuszania go na siłę.

Kot brytyjski krótkowłosy najlepiej funkcjonuje przy spokojniejszej, przewidywalnej rutynie. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Gęsta, krótka sierść wymaga regularnego szczotkowania, szczególnie w okresie linienia. Pielęgnacja nie jest skomplikowana, ale systematyczność pomaga ograniczyć sierść w domu. Warto też kontrolować pazury i stan zębów.

Kot brytyjski krótkowłosy potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Brytyjczyki mają tendencję do przybierania na wadze, dlatego porcje powinny być dobrze odmierzone. Dieta musi pasować do wieku, aktywności i stanu zdrowia kota. Regularne ważenie pomaga zauważyć zmiany wcześniej niż sama obserwacja sylwetki.

Kot brytyjski krótkowłosy wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'U kotów tej rasy warto pilnować masy ciała, kondycji zębów i regularnych kontroli weterynaryjnych. Informacje mają charakter ogólny i nie zastępują konsultacji z lekarzem weterynarii. Każda nagła zmiana apetytu, zachowania lub wagi wymaga uwagi.

Profilaktyka u rasy Kot brytyjski krótkowłosy powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty obejmują karmę, żwirek, profilaktykę, akcesoria i ewentualne wizyty kontrolne. Przy skłonności do nadwagi oszczędzanie na jakości diety może szybko okazać się pozorne. Warto planować stały budżet na podstawową opiekę.

Koszty utrzymania rasy Kot brytyjski krótkowłosy zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częsty błąd to uznanie, że spokojny kot nie potrzebuje zabawy. Drugim jest przekarmianie, bo masywna sylwetka bywa mylona z prawidłową wagą. Warto też nie zmuszać brytyjczyka do kontaktu, którego akurat nie chce.

Najczęstszym błędem przy rasie Kot brytyjski krótkowłosy jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Kot brytyjski krótkowłosy jest kojarzony z okrągłą głową, gęstą sierścią i spokojnym spojrzeniem. Choć wygląda pluszowo, zwykle bardziej ceni stabilną obecność człowieka niż intensywne noszenie na rękach.

Kot brytyjski krótkowłosy ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Kot perski był rozwijany jako kot do towarzystwa o efektownej, długiej sierści i spokojnym temperamencie. W historii rasy dużą rolę odgrywał wygląd oraz łagodny charakter domowego pupila.

Dziś Pers wymaga szczególnej pielęgnacji i spokojnego środowiska. Historia rasy tłumaczy, dlaczego codzienna opieka nad sierścią, oczami i komfortem życia jest tak ważna.', 5
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Kot perski jest opisywany jako łagodny, stateczny i ceniący przewidywalne otoczenie. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Kot perski to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Kot perski może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów gotowych na codzienną pielęgnację i spokojny tryb życia kota. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Kot perski będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Kot perski nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Kot perski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Kot perski może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Kot perski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Kot perski często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako niska. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Kot perski najlepiej funkcjonuje przy spokojniejszej, przewidywalnej rutynie. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Długa sierść wymaga systematycznego czesania, inaczej łatwo tworzą się kołtuny. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Kot perski wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Spokojniejszy kot potrzebuje dobrze odmierzonych porcji. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Kot perski wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, oddech, zęby, nerki i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Kot perski powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Kot perski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Kot perski zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Kot perski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Kot perski jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Jest kojarzony ze spokojem, ale nadal potrzebuje zabawy dostosowanej do możliwości. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Kot perski ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Kot syberyjski wywodzi się z naturalnych populacji kotów o mocnej budowie i gęstej sierści, przystosowanych do chłodniejszego klimatu. Rasa była rozwijana z zachowaniem cech odporności i sprawności.

Dziś kot syberyjski jest ceniony jako aktywny, rodzinny kot domowy. Jego historia wyjaśnia potrzebę przestrzeni, wspinania, regularnej pielęgnacji i zabawy.', 5
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Kot syberyjski jest opisywany jako ciekawski, sprawny i zwykle towarzyski. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Kot syberyjski to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Kot syberyjski może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą aktywnego kota i są gotowi na pielęgnację sierści. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Kot syberyjski będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Kot syberyjski nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Kot syberyjski potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Kot syberyjski może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Kot syberyjski może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Kot syberyjski często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Kot syberyjski potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Gęsta sierść wymaga czesania, szczególnie w okresie linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Kot syberyjski wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Dieta powinna wspierać umiarkowaną aktywność i dobrą masę mięśniową. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Kot syberyjski wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, wagę i stan sierści. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Kot syberyjski powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Kot syberyjski trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Kot syberyjski zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Kot syberyjski trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Kot syberyjski jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Jest zwinny i często lubi wysokie punkty obserwacyjne. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Kot syberyjski ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Labrador Retriever wywodzi się z psów pracujących przy rybakach i myśliwych, gdzie ceniono go za aportowanie, odporność i gotowość do współpracy. Rasa była rozwijana głównie jako pies użytkowy, który miał pomagać człowiekowi w wodzie i w terenie.

Z czasem Labrador stał się także psem rodzinnym, asystującym i terapeutycznym. Jego popularność wynika z połączenia łagodnego usposobienia z dużą energią, dlatego historia rasy dobrze tłumaczy, dlaczego nadal potrzebuje ruchu, zadań i kontaktu z opiekunem.', 5
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Labrador zwykle bardzo mocno szuka kontaktu z człowiekiem. To pies pogodny i chętny do współpracy, ale nie powinien być traktowany jak spokojna ozdoba kanapy. Bez ruchu, prostych zadań i jasnych zasad szybko zaczyna szukać zajęcia na własną łapę.

Labrador Retriever to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Labrador Retriever źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'Labrador pasuje do osób, które chcą aktywnego psa rodzinnego i mają czas na codzienne spacery, naukę oraz zabawę. Dobrze odnajduje się u opiekunów cierpliwych, konsekwentnych i gotowych pilnować diety. Nie jest najlepszym wyborem dla kogoś, kto często zostawia psa samego na długie godziny.

Labrador Retriever będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Labrador Retriever potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'Może mieszkać w bloku, jeśli ma zapewnione porządne wyjścia i spokojne miejsce do odpoczynku. Ogród jest dodatkiem, ale nie zastępuje spacerów ani kontaktu z opiekunem. W małym mieszkaniu warto szczególnie zadbać o naukę odpoczywania po aktywności.

Labrador Retriever lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'Labrador często dobrze dogaduje się z dziećmi, bo jest towarzyski i łagodny. Trzeba jednak pamiętać, że młody pies tej rasy bywa silny, skoczny i bardzo entuzjastyczny. Kontakty z dziećmi powinny być spokojnie nadzorowane, a pies musi mieć możliwość odejścia.

Labrador Retriever często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'To rasa o dużej potrzebie ruchu. Najlepiej sprawdzają się dłuższe spacery, aportowanie, pływanie, proste ćwiczenia węchowe i nauka komend. Samo wypuszczenie do ogrodu zwykle nie wystarcza, bo labrador potrzebuje także zajęcia głowy.

Labrador Retriever ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Krótka sierść labradora nie jest trudna, ale pies potrafi mocno linieć. Regularne szczotkowanie pomaga ograniczyć sierść w domu i pozwala szybko zauważyć problemy skórne. Warto kontrolować uszy, pazury i stan łap po spacerach.

Labrador Retriever potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Labradory często mają bardzo dobry apetyt, dlatego łatwo je przekarmić. Porcje warto odmierzać, a smakołyki wliczać w dzienną dawkę jedzenia. Utrzymanie prawidłowej masy ciała jest ważne szczególnie dla stawów i ogólnej kondycji.

Labrador Retriever wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'U labradorów warto zwracać uwagę na masę ciała, stawy, uszy i skórę. Informacje na stronie mają charakter orientacyjny i nie zastępują konsultacji z lekarzem weterynarii. Przy niepokojących objawach najlepiej skonsultować psa ze specjalistą.

Profilaktyka u rasy Labrador Retriever powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania labradora zależą głównie od jakości karmy, profilaktyki weterynaryjnej, akcesoriów i ewentualnej pracy z trenerem. To średnio duży pies, więc żywienie i opieka mogą być wyraźnym miesięcznym wydatkiem. Warto zaplanować budżet także na badania kontrolne.

Koszty utrzymania rasy Labrador Retriever zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest zakładanie, że labrador sam z siebie będzie grzeczny, bo rasa ma opinię rodzinnej. Bez nauki chodzenia na smyczy, kontroli emocji i rozsądnej diety łatwo o problemy. Drugim błędem jest zbyt mało aktywności umysłowej.

Najczęstszym błędem przy rasie Labrador Retriever jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Labradory wywodzą się z psów pracujących przy wodzie, dlatego wiele z nich uwielbia pływać i nosić przedmioty w pysku. Ta cecha może być świetną bazą do zabawy, ale wymaga zasad, żeby pies nie podkradał wszystkiego z domu.

Labrador Retriever ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Maine Coon wywodzi się z kotów północnoamerykańskich, które musiały radzić sobie w chłodniejszym klimacie i w gospodarstwach. Selekcja naturalna sprzyjała mocnej budowie, gęstej sierści i spokojnemu, samodzielnemu charakterowi.

Z czasem rasa stała się popularnym kotem domowym, cenionym za towarzyskość i imponujący wygląd. Jej historia pomaga zrozumieć potrzebę regularnej pielęgnacji oraz zapewnienia kotu przestrzeni do obserwacji i spokojnej aktywności.', 5
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Maine Coon jest zwykle spokojny, towarzyski i ciekawski. Często lubi być blisko człowieka, ale nie zawsze jest typowym kotem na kolana. Potrzebuje kontaktu, zabawy i przestrzeni, w której może obserwować dom z wyższego miejsca.

Maine Coon to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Maine Coon może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób, które chcą dużego, kontaktowego kota i są gotowe na regularną pielęgnację. Maine Coon dobrze odnajduje się w domu, gdzie opiekun ma czas na zabawę i obserwuje zmiany w zdrowiu. Nie jest najlepszy dla kogoś, kto chce kota całkowicie bezobsługowego.

Maine Coon będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Maine Coon nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'Maine Coon może mieszkać w mieszkaniu, jeśli ma drapaki, półki, miejsca obserwacyjne i codzienną zabawę. Ze względu na rozmiar potrzebuje stabilnych akcesoriów. Balkon lub okna powinny być dobrze zabezpieczone.

Maine Coon może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'Maine Coony często dobrze funkcjonują w rodzinie, ale trzeba szanować ich granice. Dzieci powinny wiedzieć, że kota nie wolno nosić na siłę ani przeszkadzać mu w odpoczynku. Spokojne zabawy wędką zwykle sprawdzają się lepiej niż gonitwy.

Maine Coon często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'To kot umiarkowanie aktywny, który lubi zabawę i eksplorację. Warto planować krótkie sesje łowieckie z wędką, zabawki na jedzenie i miejsca do wspinania. Brak zajęcia może sprzyjać nudzie i podjadaniu.

Maine Coon potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Półdługa sierść wymaga regularnego czesania, szczególnie na brzuchu, portkach i za uszami. Lepiej robić to krótko, ale systematycznie, niż czekać na kołtuny. Przyzwyczajanie do pielęgnacji warto zacząć spokojnie i stopniowo.

Maine Coon wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie Maine Coona powinno uwzględniać jego rozmiar, aktywność i skłonność do przybierania na wadze. Porcje warto kontrolować, nawet jeśli kot wydaje się stale zainteresowany jedzeniem. Dobre nawodnienie i jakość diety są ważne w codziennej opiece.

Maine Coon wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'U tej rasy często zwraca się uwagę na profilaktykę serca, stawów i masy ciała. Informacje są orientacyjne i nie zastępują opieki lekarza weterynarii. Regularne kontrole pomagają szybciej zauważyć problemy, które u dużego kota mogą długo pozostać mało widoczne.

Profilaktyka u rasy Maine Coon powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania Maine Coona mogą być wyższe niż u mniejszych kotów ze względu na ilość karmy, większe akcesoria i pielęgnację. Warto uwzględnić solidny drapak, większą kuwetę i profilaktyczne badania. To rasa, przy której planowanie budżetu ma duże znaczenie.

Koszty utrzymania rasy Maine Coon zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częsty błąd to kupowanie zbyt małych lub niestabilnych akcesoriów. Drugim jest odkładanie czesania do momentu, gdy pojawią się kołtuny. Warto też nie przekarmiać kota tylko dlatego, że jest duży.

Najczęstszym błędem przy rasie Maine Coon jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Maine Coon jest jedną z największych ras kotów domowych, ale jego charakter często bywa łagodny i społeczny. Wiele kotów tej rasy wydaje ciche, nietypowe dźwięki i chętnie obserwuje codzienne czynności opiekuna.

Maine Coon ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Maltańczyk należy do małych psów do towarzystwa, rozwijanych z myślą o bliskim kontakcie z człowiekiem. Rasa była ceniona za łagodność, urok i białą, wymagającą pielęgnacji szatę.

Z czasem Maltańczyk stał się popularnym psem miejskim i rodzinnym. Jego historia pokazuje, że mimo niewielkich rozmiarów potrzebuje wychowania, rutyny i systematycznej pielęgnacji.', 5
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Maltańczyk jest opisywany jako kontaktowy, pogodny i zwykle chętny do zabawy. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Maltańczyk to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Maltańczyk źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą małego psa blisko rodziny i mają czas na pielęgnację. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Maltańczyk będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Maltańczyk potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Maltańczyk potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Maltańczyk może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Maltańczyk może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Maltańczyk często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Maltańczyk potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Biała sierść wymaga regularnego czesania i dbania o okolice oczu. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Maltańczyk wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Precyzyjne porcje są ważne, bo nadmiar smakołyków szybko robi różnicę. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Maltańczyk wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, oczy i kolana. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Maltańczyk powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Maltańczyk trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Maltańczyk zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Maltańczyk trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Maltańczyk jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często dobrze odnajduje się w mieszkaniu, jeśli ma kontakt z opiekunem. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Maltańczyk ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Owczarek niemiecki był rozwijany jako wszechstronny pies pasterski i użytkowy. Ceniono u niego inteligencję, czujność, wytrzymałość oraz gotowość do pracy z przewodnikiem.

Z czasem rasa zaczęła pełnić wiele ról: od psa rodzinnego po psa służbowego, sportowego i ratowniczego. Ta historia sprawia, że owczarek najlepiej odnajduje się u opiekuna, który potrafi połączyć ruch, naukę i spokojne zasady.', 5
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Owczarek niemiecki to pies inteligentny, czujny i mocno związany z opiekunem. Lubi jasne zadania i przewidywalne zasady. Bez prowadzenia może stać się nadmiernie pobudzony albo zbyt samodzielny w pilnowaniu otoczenia.

Owczarek niemiecki to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Owczarek niemiecki źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To rasa dla osób, które chcą aktywnie pracować z psem i lubią szkolenie. Owczarek potrzebuje opiekuna konsekwentnego, spokojnego i gotowego na codzienne ćwiczenia. Nie jest najlepszym wyborem dla kogoś, kto szuka psa bez dużego zaangażowania.

Owczarek niemiecki będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Owczarek niemiecki potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'Owczarek może mieszkać w domu lub mieszkaniu, ale potrzebuje ruchu, zajęcia i wyciszenia. Sam ogród nie rozwiązuje jego potrzeb, a czasem wzmacnia czujność. Ważne jest spokojne miejsce, w którym pies może odpocząć po aktywności.

Owczarek niemiecki lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'Dobrze prowadzony owczarek może być lojalnym psem rodzinnym, ale jego siła i czujność wymagają odpowiedzialności dorosłych. Dzieci nie powinny prowadzić go bez nadzoru. Od początku warto uczyć psa spokojnych reakcji na domowy ruch.

Owczarek niemiecki często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Rasa potrzebuje zarówno ruchu, jak i pracy umysłowej. Spacery, trening posłuszeństwa, tropienie lub ćwiczenia węchowe pomagają wykorzystać jego potencjał. Zbyt mało zajęcia może prowadzić do napięcia, szczekania i problemów z kontrolą emocji.

Owczarek niemiecki ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja zależy od typu sierści, ale regularne szczotkowanie jest ważne przez cały rok. W okresie linienia sierści może być bardzo dużo. Warto kontrolować pazury, uszy i stan skóry po intensywnych spacerach.

Owczarek niemiecki potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Dieta owczarka powinna wspierać prawidłową masę ciała i kondycję mięśni. Przy dużej aktywności porcje muszą być dopasowane do realnego wysiłku, a nie tylko do wielkości psa. Nadwaga może dodatkowo obciążać stawy.

Owczarek niemiecki wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'U owczarków szczególnie ważna jest profilaktyka stawów, kontrola ruchu w okresie wzrostu i obserwacja sposobu poruszania się. Informacje są ogólne i nie zastępują konsultacji z lekarzem weterynarii. Przy kulawiźnie lub bólu potrzebna jest fachowa ocena.

Profilaktyka u rasy Owczarek niemiecki powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty mogą obejmować dobrej jakości karmę, szkolenie, profilaktykę weterynaryjną i solidne akcesoria. Przy tej rasie warto zaplanować budżet na pracę z trenerem, zwłaszcza w pierwszych latach. Oszczędzanie na socjalizacji często odbija się na codziennym komforcie.

Koszty utrzymania rasy Owczarek niemiecki zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest budowanie pobudzenia zamiast spokojnej kontroli. Owczarek nie potrzebuje ciągłego nakręcania, tylko mądrego prowadzenia i odpoczynku. Problemem bywa też zbyt późna socjalizacja z ludźmi, psami i nowymi miejscami.

Najczęstszym błędem przy rasie Owczarek niemiecki jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Owczarki niemieckie są cenione w wielu rodzajach pracy, bo szybko się uczą i dobrze czytają człowieka. Ta inteligencja jest zaletą, ale oznacza też, że pies szybko uczy się złych nawyków, jeśli zasady są niejasne.

Owczarek niemiecki ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Pudel był rozwijany jako inteligentny pies użytkowy i towarzyszący, często kojarzony także z pracą w wodzie. W historii rasy ważne były spryt, podatność na naukę i charakterystyczna, wymagająca sierść.

Dziś Pudel świetnie odnajduje się w wielu rolach, od psa rodzinnego po sportowego. Historia rasy pokazuje, że potrzebuje nie tylko fryzjera, ale też zadań umysłowych i kontaktu z człowiekiem.', 5
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Pudel jest opisywany jako inteligentny, wesoły i chętny do nauki. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Pudel to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Pudel źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów chcących psa rodzinnego, ale gotowych na regularny grooming. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Pudel będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Pudel potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Pudel potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Pudel może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Pudel może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Pudel często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Pudel potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Wymaga strzyżenia i systematycznego czesania. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Pudel wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje zależą od odmiany wielkości, aktywności i wieku psa. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Pudel wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, uszy, zęby i stawy zależnie od wielkości. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Pudel powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Pudel trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Pudel zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Pudel trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Pudel jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Należy do bardzo pojętnych psów i często lubi naukę sztuczek. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Pudel ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Ragdoll był rozwijany jako kot domowy o łagodnym, kontaktowym charakterze i półdługiej sierści. W historii rasy szczególnie ceniono spokojne usposobienie oraz przywiązanie do ludzi.

Z czasem Ragdoll stał się popularny w mieszkaniach, ale nadal potrzebuje zabawy, rutyny i bezpiecznego środowiska. Historia rasy tłumaczy, dlaczego najlepiej czuje się w domu, w którym opiekun poświęca mu czas.', 5
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Ragdoll jest opisywany jako łagodny, kontaktowy i zwykle bardzo nastawiony na człowieka. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Ragdoll to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Ragdoll może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla domów szukających spokojnego kota rodzinnego, który lubi bliskość. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Ragdoll będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Ragdoll nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Ragdoll potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Ragdoll może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Ragdoll może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Ragdoll często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Ragdoll potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Półdługa sierść wymaga regularnego czesania, ale zwykle nie jest bardzo trudna. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Ragdoll potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto pilnować porcji, bo spokojniejszy tryb życia sprzyja nadwadze. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Ragdoll wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na serce, wagę i ogólną kondycję. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Ragdoll powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Ragdoll trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Koszty utrzymania rasy Ragdoll zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Ragdoll trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Ragdoll jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Nazwa odnosi się do skłonności wielu kotów tej rasy do rozluźniania się na rękach. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Ragdoll ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Rottweiler wywodzi się z psów pracujących przy stadach i transporcie, gdzie ceniono siłę, stabilność i czujność. Rasa była rozwijana jako pies użytkowy wymagający odpowiedzialnego prowadzenia.

Dziś Rottweiler może być lojalnym psem rodzinnym, ale jego historia przypomina o znaczeniu socjalizacji, szkolenia i kontroli siły. To rasa dla osób gotowych na świadomą, spokojną pracę z psem.', 5
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Rottweiler jest opisywany jako pewny siebie, lojalny i wymagający odpowiedzialnego prowadzenia. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Rottweiler to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Rottweiler źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla doświadczonych opiekunów, którzy stawiają na szkolenie, spokój i kontrolę. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Rottweiler będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Rottweiler potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Rottweiler potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Rottweiler lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Rottweiler może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Rottweiler w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Rottweiler ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako niska. Pielęgnacja jest łatwa, ale potrzeby szkoleniowe i ruchowe są duże. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Rottweiler ma pielęgnację prostszą, choć nadal wymaga kontroli skóry, uszu i pazurów. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Duży pies wymaga dobrze planowanej diety i kontroli masy. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Rottweiler wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, serce i prawidłową wagę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Rottweiler powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Rottweiler trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako niska.

Koszty utrzymania rasy Rottweiler zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Rottweiler trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Rottweiler jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Może być spokojnym psem rodzinnym, ale nie jest rasą dla przypadkowego opiekuna. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Rottweiler ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Samoyed wywodzi się z psów północnych, które żyły blisko ludzi i pracowały w wymagającym klimacie. Ceniono wytrzymałość, gęstą sierść oraz przyjazne nastawienie do człowieka.

Dziś Samoyed jest psem rodzinnym i aktywnym towarzyszem. Jego historia dobrze wyjaśnia potrzebę ruchu, regularnej pielęgnacji i zapewnienia mu kontaktu z opiekunem.', 5
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Samoyed jest opisywany jako towarzyski, pogodny i energiczny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Samoyed to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Samoyed źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla aktywnych rodzin gotowych na dużo sierści, ruchu i kontaktu z psem. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Samoyed będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Samoyed potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Samoyed potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Samoyed lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Samoyed może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Samoyed często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Samoyed ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Wymaga regularnego czesania, szczególnie podczas intensywnego linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Samoyed wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Porcje powinny pasować do aktywności i pory roku. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Samoyed wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na stawy, oczy, skórę i komfort w upały. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Samoyed powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Samoyed trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Samoyed zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Samoyed trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Samoyed jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Słynie z charakterystycznego uśmiechu, ale za urokiem stoi realna potrzeba pracy. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Samoyed ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Sfinks był rozwijany jako kot domowy o bardzo charakterystycznym wyglądzie i silnej potrzebie kontaktu z człowiekiem. Brak typowej okrywy włosowej sprawił, że opieka nad skórą i temperaturą stała się ważnym elementem utrzymania.

Dziś Sfinks jest kotem towarzyskim, aktywnym i mocno związanym z domem. Historia rasy tłumaczy, dlaczego potrzebuje ciepła, regularnej pielęgnacji skóry i bezpiecznych warunków w mieszkaniu.', 5
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Sfinks jest opisywany jako towarzyski, ciepłolubny i bardzo kontaktowy. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Sfinks to kot, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

U kota tej rasy szczególnie ważne są bezpieczne kryjówki, stabilny rytm dnia i możliwość samodzielnego decydowania o kontakcie. Sfinks może być bardzo towarzyski, ale nadal potrzebuje szacunku dla granic.', 10
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów, którzy chcą kota blisko człowieka i rozumieją potrzeby skóry oraz temperatury. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Sfinks będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który chce kota domowego, ale rozumie potrzebę zabawy, drapaków, kuwety w dobrym miejscu i regularnej obserwacji apetytu. Sfinks nie powinien być wybierany wyłącznie ze względu na wygląd.', 20
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Sfinks potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Sfinks może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W domu warto przygotować drapaki, półki, legowiska i spokojną strefę kuwety. Dobrze zaplanowane środowisko często zmniejsza frustrację i pomaga utrzymać prawidłową aktywność.', 30
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Sfinks może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Sfinks często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi trzeba pilnować, aby kot miał drogę ucieczki i nie był noszony wbrew woli. Spokojne zabawy, wędki i przewidywalne rytuały są zwykle bezpieczniejsze niż intensywne zaczepianie.', 40
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Sfinks potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność kota najlepiej planować w krótkich sesjach: polowanie zabawką, wspinanie, szukanie przysmaków i obserwacja otoczenia. Brak bodźców może prowadzić do nudy, nadwagi lub frustracji.', 50
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Skóra wymaga regularnej kontroli, delikatnego mycia i ochrony przed chłodem oraz słońcem. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Sfinks potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji kota ważne są krótkie, regularne sesje i nagradzanie spokoju. Kuweta, pazury, sierść i kontrola skóry powinny być częścią rutyny, a nie awaryjną akcją raz na kilka miesięcy.', 60
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Utrzymanie temperatury i aktywność mogą wpływać na zapotrzebowanie energetyczne. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Sfinks wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U kotów szczególnie ważna jest kontrola masy ciała, nawodnienie i obserwacja apetytu. Nagłe zmiany jedzenia lub zachowania przy misce warto konsultować, zwłaszcza jeśli pojawia się spadek energii.', 70
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na skórę, serce, zęby i komfort termiczny. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Sfinks powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować kuwetę, apetyt, pragnienie, masę ciała i jakość sierści, bo u kotów drobne zmiany bywają pierwszym sygnałem problemu. Każda niepokojąca zmiana wymaga konsultacji, a nie domowego diagnozowania.', 80
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Sfinks trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Koszty utrzymania rasy Sfinks zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, żwirek, profilaktykę, drapaki, zabawki oraz ewentualną pielęgnację. Przy kotach długowłosych lub wymagających zdrowotnie realne koszty mogą być wyraźnie wyższe.', 90
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Sfinks trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Sfinks jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy kotach częstym błędem jest zbyt mała liczba zasobów: drapaków, miejsc odpoczynku, kuwet lub zabaw. Problemem bywa też przekarmianie i brak codziennej aktywności.', 100
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często szuka ciepłych miejsc i bliskiego kontaktu z opiekunem. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Sfinks ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać dopiero po urządzeniu domu: wysokości półek, jakości zabawy i spokojnych rytuałach. Dobrze przygotowane środowisko potrafi wydobyć najlepsze cechy kota.', 110
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Shih Tzu był rozwijany jako mały pies do towarzystwa, blisko związany z domem i człowiekiem. W historii rasy istotne były spokojne usposobienie, efektowna szata i rola psa salonowego.

Dziś Shih Tzu nadal jest przede wszystkim psem rodzinnym i towarzyszącym. Jego historia tłumaczy, dlaczego tak ważne są regularna pielęgnacja, kontakt z opiekunem i spokojne wprowadzanie zasad domowych.', 5
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Shih Tzu jest opisywany jako towarzyski, spokojny i przywiązany do domowników. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Shih Tzu to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Shih Tzu źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla opiekunów szukających małego psa, ale gotowych na systematyczną pielęgnację. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Shih Tzu będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Shih Tzu potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Shih Tzu potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Shih Tzu może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Shih Tzu może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Shih Tzu często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako niska. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Shih Tzu najlepiej funkcjonuje przy spokojniejszej, przewidywalnej rutynie. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Wymaga regularnego czesania, kąpieli i pielęgnacji okolic oczu. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Shih Tzu wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Małe porcje powinny być dobrej jakości i dopasowane do aktywności. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Shih Tzu wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, oddech, zęby i masę ciała. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Shih Tzu powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Shih Tzu trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Shih Tzu zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Shih Tzu trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Shih Tzu jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Mimo ozdobnego wyglądu wiele shih tzu lubi krótkie zabawy i spokojne treningi. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Shih Tzu ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Siberian Husky wywodzi się z psów zaprzęgowych pracujących na długich dystansach. W historii rasy ważne były wytrzymałość, praca w grupie i odporność na trudne warunki.

Z czasem Husky trafił do domów aktywnych opiekunów, ale nadal zachował silną potrzebę ruchu i niezależność. Historia rasy tłumaczy, dlaczego nie wystarczą mu krótkie spacery wokół bloku.', 5
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Siberian Husky jest opisywany jako niezależny, energiczny i bardzo wytrzymały. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Siberian Husky to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Siberian Husky źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób aktywnych, które rozumieją psy północne i potrafią zabezpieczyć teren. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Siberian Husky będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Siberian Husky potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Siberian Husky potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Siberian Husky lepiej odnajduje się tam, gdzie ma więcej przestrzeni i dobrze zaplanowane wyjścia. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Siberian Husky może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Siberian Husky w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako wysoka. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Siberian Husky ma wysoką potrzebę ruchu i zajęć umysłowych. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako średnia. Sierść wymaga czesania, zwłaszcza podczas linienia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Siberian Husky potrzebuje regularnej, ale zwykle możliwej do opanowania pielęgnacji. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Aktywny husky potrzebuje dobrej diety, ale porcje zależą od realnego wysiłku. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Siberian Husky wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na oczy, stawy i kondycję przy intensywnym ruchu. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Siberian Husky powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Siberian Husky trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako średnia.

Koszty utrzymania rasy Siberian Husky zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Siberian Husky trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Siberian Husky jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często lepiej współpracuje przy zadaniach ruchowych niż przy monotonnych komendach. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Siberian Husky ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Sznaucer miniaturowy wywodzi się z mniejszych psów gospodarskich i czujnych towarzyszy domu. Rasa była rozwijana jako pies energiczny, odważny i uważny na otoczenie.

Z czasem stała się popularnym psem miejskim. Historia rasy tłumaczy jej czujność, potrzebę zasad, regularnej pielęgnacji szaty i aktywności dopasowanej do małego, ale temperamentnego psa.', 5
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Sznaucer miniaturowy jest opisywany jako czujny, bystry i często bardzo komunikatywny. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Sznaucer miniaturowy to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Sznaucer miniaturowy źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób szukających małego psa z charakterem i gotowych na regularne trymowanie. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Sznaucer miniaturowy będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Sznaucer miniaturowy potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Sznaucer miniaturowy potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Sznaucer miniaturowy może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Sznaucer miniaturowy może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Sznaucer miniaturowy często dobrze pasuje do życia rodzinnego, ale kontakty z dziećmi nadal powinny być spokojnie nadzorowane. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Sznaucer miniaturowy potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Sierść wymaga trymowania lub regularnej pielęgnacji u groomera. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Sznaucer miniaturowy wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Warto pilnować wagi i jakości przysmaków. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Sznaucer miniaturowy wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na skórę, zęby, wagę i układ moczowy. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Sznaucer miniaturowy powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Sznaucer miniaturowy trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Sznaucer miniaturowy zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Sznaucer miniaturowy trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Sznaucer miniaturowy jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Często świetnie łączy czujność z życiem rodzinnym. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Sznaucer miniaturowy ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'history', 'Historia rasy', 'Yorkshire Terrier wywodzi się z małych terierów użytkowych, które łączyły odwagę z niewielkimi rozmiarami. Rasa była rozwijana w środowisku miejskim i przemysłowym, gdzie liczyła się zwinność oraz czujność.

Z czasem York stał się psem do towarzystwa, ale zachował terierową pewność siebie. Dlatego jego historia przypomina, że nie jest pluszową zabawką, lecz małym psem z charakterem i potrzebą jasnych zasad.', 5
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'character', 'Charakter', 'Yorkshire Terrier jest opisywany jako odważny, żywy i często bardziej pewny siebie, niż sugeruje rozmiar. W codziennym życiu oznacza to potrzebę spokojnego kontaktu z opiekunem, jasnych zasad i aktywności dopasowanej do możliwości zwierzęcia.

Yorkshire Terrier to pies, którego codzienne zachowanie najmocniej zależy od rutyny, socjalizacji i sposobu prowadzenia. W praktyce opiekun powinien obserwować reakcje na gości, inne zwierzęta i samotność, zamiast zakładać, że opis rasy rozwiązuje wszystko.

W przypadku psa tej rasy dobre efekty daje spokojne nagradzanie pożądanych zachowań i jasne zasady w domu. Yorkshire Terrier źle znosi chaos, jeśli opiekun raz pozwala na wszystko, a innym razem wymaga pełnej kontroli.', 10
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'for_whom', 'Dla kogo będzie dobrym wyborem', 'To dobry wybór dla osób lubiących małe psy z charakterem i gotowych na konsekwentne wychowanie. Najlepiej sprawdzi się tam, gdzie opiekun nie oczekuje automatycznie łatwego zwierzęcia, tylko chce poznać jego realne potrzeby.

Yorkshire Terrier będzie najlepszym wyborem dla osoby, która realnie uwzględni jego potrzeby, a nie tylko wygląd. Przed decyzją warto sprawdzić czas na spacery lub zabawę, budżet, pielęgnację i możliwość spokojnej pracy nad zachowaniem.

To dobry kierunek dla opiekuna, który ma czas na codzienną pracę z psem i nie oczekuje, że rasa sama się wychowa. Yorkshire Terrier potrzebuje przewidywalności, cierpliwości i dopasowanego poziomu wymagań.', 20
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'home_and_apartment', 'Dom i mieszkanie', 'W mieszkaniu lub domu Yorkshire Terrier potrzebuje przewidywalnego miejsca do odpoczynku i codziennej rutyny. Sama powierzchnia nie wystarczy, jeśli brakuje ruchu, zabawy i kontaktu z opiekunem.

Yorkshire Terrier może dobrze odnaleźć się w mieszkaniu, jeśli opiekun zadba o rutynę i spokojne miejsce odpoczynku. Ważniejsze od samego metrażu jest to, czy dom daje przewidywalność, bezpieczeństwo i możliwość odpoczynku bez ciągłego pobudzenia.

W mieszkaniu szczególnie ważna jest nauka wyciszania po spacerze. Dobrze zaplanowane wyjścia, zabawy węchowe i miejsce odpoczynku mają większe znaczenie niż sam dostęp do ogrodu.', 30
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'children_and_family', 'Dzieci i rodzina', 'W rodzinie Yorkshire Terrier może odnaleźć się dobrze, jeśli kontakty są spokojne i nadzorowane. Dzieci powinny znać zasady szanowania odpoczynku, miski i przestrzeni zwierzęcia.

Yorkshire Terrier w rodzinie wymaga szczególnie uważnego prowadzenia, jasnych granic i szacunku dla jego przestrzeni. Dzieci warto uczyć, że zwierzę nie jest zabawką, a odpoczynek, jedzenie i sen powinny być respektowane.

W rodzinie z dziećmi warto ustalić proste zasady: nie przeszkadzać przy jedzeniu, nie budzić, nie zabierać zabawek i nie prowokować pogoni. Dzięki temu pies ma większą szansę zachować spokój.', 40
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'activity', 'Aktywność', 'Poziom aktywności tej rasy oceniono jako średnia. W praktyce oznacza to, że plan dnia powinien uwzględniać ruch, zabawę i odpoczynek, a nie tylko krótkie wyjście lub miskę jedzenia.

Yorkshire Terrier potrzebuje regularnej, ale rozsądnie dawkowanej aktywności. Dobrze sprawdzają się krótsze ćwiczenia wykonywane regularnie, bo nadmiar bodźców bywa równie problematyczny jak nuda.

Aktywność psa powinna łączyć ruch z pracą głową: spacer, spokojne ćwiczenia, węszenie i odpoczynek. Zbyt intensywne nakręcanie bez nauki wyciszenia może pogarszać zachowanie.', 50
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'grooming', 'Pielęgnacja', 'Pielęgnacja tej rasy jest oceniona jako wysoka. Długa sierść wymaga czesania albo regularnego strzyżenia. Regularność jest ważniejsza niż okazjonalne nadrabianie zaniedbań.

Yorkshire Terrier wymaga systematycznej pielęgnacji i kontroli sierści. Warto od początku przyzwyczajać zwierzę do spokojnego dotyku, szczotki, kontroli łap i krótkich zabiegów pielęgnacyjnych.

Przy pielęgnacji psa warto pamiętać także o uszach, pazurach, łapach i zębach. Im wcześniej opiekun wprowadzi krótkie, spokojne zabiegi, tym mniej stresu pojawi się później.', 60
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'feeding', 'Żywienie', 'Żywienie powinno uwzględniać wielkość, wiek, aktywność i kondycję zwierzęcia. Potrzebuje małych, dobrze odmierzonych porcji i kontroli przysmaków. Podane w Futrio kalorie są zakresem orientacyjnym, a nie sztywną normą.

Yorkshire Terrier wymaga żywienia dopasowanego do masy ciała, wieku, aktywności i stanu zdrowia. Najbezpieczniej traktować kalkulatory jako punkt orientacyjny, a przy problemach z wagą lub przewodem pokarmowym korzystać z pomocy lekarza weterynarii.

U psów tej rasy warto pilnować porcji, przysmaków treningowych i reakcji organizmu na karmę. Zbyt szybkie zwiększanie porcji może łatwo prowadzić do nadwagi, szczególnie przy mniejszej aktywności.', 70
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'health', 'Zdrowie', 'Informacje zdrowotne mają charakter orientacyjny. U tej rasy warto zwracać uwagę na zęby, kolana i delikatną budowę. Nie oznacza to, że każde zwierzę będzie mieć takie problemy.

Profilaktyka u rasy Yorkshire Terrier powinna opierać się na kontroli masy ciała, regularnych wizytach i szybkim reagowaniu na zmiany w zachowaniu. Futrio nie diagnozuje chorób, ale pomaga opiekunowi zauważyć obszary, o które warto zapytać specjalistę.

Warto obserwować chód, kondycję, oddech, skórę i apetyt, szczególnie po zmianie karmy lub poziomu aktywności. Każda kulawizna, przewlekły świąd albo nagły spadek energii wymaga konsultacji.', 80
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'costs', 'Koszty utrzymania', 'Koszty utrzymania zależą od wielkości, jakości karmy, pielęgnacji, profilaktyki i stylu życia. Przy rasie Yorkshire Terrier trzeba uwzględnić szczególnie poziom aktywności oraz pielęgnację ocenioną jako wysoka.

Koszty utrzymania rasy Yorkshire Terrier zależą od jakości karmy, profilaktyki, pielęgnacji i ewentualnych potrzeb zdrowotnych. Najrozsądniej planować budżet z zapasem, bo wydatki nie kończą się na zakupie karmy i podstawowych akcesoriów.

W budżecie trzeba uwzględnić karmę, profilaktykę, akcesoria, szkolenie, pielęgnację i rezerwę weterynaryjną. U ras większych lub bardziej aktywnych koszt karmy i opieki zwykle rośnie.', 90
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'common_mistakes', 'Częste błędy opiekunów', 'Częstym błędem jest wybór rasy wyłącznie po wyglądzie. W przypadku Yorkshire Terrier trzeba wcześniej zrozumieć temperament, aktywność i pielęgnację, bo to one decydują o codziennym komforcie.

Najczęstszym błędem przy rasie Yorkshire Terrier jest wybór pod wpływem wyglądu, bez sprawdzenia codziennych obowiązków. Drugi błąd to odkładanie wychowania, pielęgnacji lub kontroli masy ciała na później, gdy problem jest już utrwalony.

Przy psach częstym błędem jest mylenie zmęczenia z dobrym wychowaniem. Rasa potrzebuje nie tylko ruchu, ale też nauki odpoczywania, spokojnych zasad i pracy nad emocjami.', 100
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT id, 'fun_facts', 'Ciekawostki', 'Wywodzi się z psów pracujących, dlatego ma sporo energii i temperamentu. To ciekawostka, ale też praktyczna wskazówka: historia i pierwotne przeznaczenie rasy często tłumaczą jej dzisiejsze zachowania.

Yorkshire Terrier ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. To właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.

W praktyce wiele cech rasy widać najlepiej podczas spaceru i odpoczynku po nim. Dobre dopasowanie opiekuna polega na tym, że pies ma zarówno zadania, jak i czas na spokojne wyciszenie.', 110
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Akita inu nadaje się do mieszkania?', 'Akita inu może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Akita inu?', 'Akita inu potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Akita inu jest dobrym wyborem dla rodziny z dziećmi?', 'Akita inu może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Akita inu?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Akita inu?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Beagle nadaje się do mieszkania?', 'Beagle może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Beagle?', 'Beagle potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Beagle jest dobrym wyborem dla rodziny z dziećmi?', 'Beagle może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Beagle?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Beagle?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Bengal nadaje się do mieszkania?', 'Bengal może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Bengal?', 'Bengal potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Bengal jest dobrym wyborem dla rodziny z dziećmi?', 'Bengal może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Bengal?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Bengal?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Berneński pies pasterski nadaje się do mieszkania?', 'Berneński pies pasterski może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Berneński pies pasterski?', 'Berneński pies pasterski potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Berneński pies pasterski jest dobrym wyborem dla rodziny z dziećmi?', 'Berneński pies pasterski może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Berneński pies pasterski?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Berneński pies pasterski?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Bokser nadaje się do mieszkania?', 'Bokser może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Bokser?', 'Bokser potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Bokser jest dobrym wyborem dla rodziny z dziećmi?', 'Bokser może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Bokser?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Bokser?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Border Collie nadaje się do mieszkania?', 'Border Collie może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Border Collie?', 'Border Collie potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Border Collie jest dobrym wyborem dla rodziny z dziećmi?', 'Border Collie może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Border Collie?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Border Collie?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Buldog francuski nadaje się do mieszkania?', 'Buldog francuski może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Buldog francuski?', 'Buldog francuski potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Buldog francuski jest dobrym wyborem dla rodziny z dziećmi?', 'Buldog francuski może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Buldog francuski?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Buldog francuski?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Cane Corso nadaje się do mieszkania?', 'Cane Corso może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Cane Corso?', 'Cane Corso potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Cane Corso jest dobrym wyborem dla rodziny z dziećmi?', 'Cane Corso może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Cane Corso?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Cane Corso?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Cavalier King Charles Spaniel nadaje się do mieszkania?', 'Cavalier King Charles Spaniel może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Cavalier King Charles Spaniel?', 'Cavalier King Charles Spaniel potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Cavalier King Charles Spaniel jest dobrym wyborem dla rodziny z dziećmi?', 'Cavalier King Charles Spaniel może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Cavalier King Charles Spaniel?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Cavalier King Charles Spaniel?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Chihuahua nadaje się do mieszkania?', 'Chihuahua może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Chihuahua?', 'Chihuahua potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Chihuahua jest dobrym wyborem dla rodziny z dziećmi?', 'Chihuahua może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Chihuahua?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Chihuahua?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Cocker Spaniel angielski nadaje się do mieszkania?', 'Cocker Spaniel angielski może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Cocker Spaniel angielski?', 'Cocker Spaniel angielski potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Cocker Spaniel angielski jest dobrym wyborem dla rodziny z dziećmi?', 'Cocker Spaniel angielski może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Cocker Spaniel angielski?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Cocker Spaniel angielski?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Golden Retriever nadaje się do mieszkania?', 'Golden Retriever może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Golden Retriever?', 'Golden Retriever potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Golden Retriever jest dobrym wyborem dla rodziny z dziećmi?', 'Golden Retriever może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Golden Retriever?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Golden Retriever?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Jack Russell Terrier nadaje się do mieszkania?', 'Jack Russell Terrier może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Jack Russell Terrier?', 'Jack Russell Terrier potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Jack Russell Terrier jest dobrym wyborem dla rodziny z dziećmi?', 'Jack Russell Terrier może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Jack Russell Terrier?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Jack Russell Terrier?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Jamnik nadaje się do mieszkania?', 'Jamnik może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Jamnik?', 'Jamnik potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Jamnik jest dobrym wyborem dla rodziny z dziećmi?', 'Jamnik może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Jamnik?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Jamnik?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Kot brytyjski krótkowłosy nadaje się do mieszkania?', 'Kot brytyjski krótkowłosy może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Kot brytyjski krótkowłosy?', 'Kot brytyjski krótkowłosy potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Kot brytyjski krótkowłosy jest dobrym wyborem dla rodziny z dziećmi?', 'Kot brytyjski krótkowłosy może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Kot brytyjski krótkowłosy?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Kot brytyjski krótkowłosy?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Kot perski nadaje się do mieszkania?', 'Kot perski może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Kot perski?', 'Kot perski potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Kot perski jest dobrym wyborem dla rodziny z dziećmi?', 'Kot perski może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Kot perski?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Kot perski?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Kot syberyjski nadaje się do mieszkania?', 'Kot syberyjski może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Kot syberyjski?', 'Kot syberyjski potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Kot syberyjski jest dobrym wyborem dla rodziny z dziećmi?', 'Kot syberyjski może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Kot syberyjski?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Kot syberyjski?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Labrador Retriever nadaje się do mieszkania?', 'Labrador Retriever może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Labrador Retriever?', 'Labrador Retriever potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Labrador Retriever jest dobrym wyborem dla rodziny z dziećmi?', 'Labrador Retriever może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Labrador Retriever?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Labrador Retriever?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Maine Coon nadaje się do mieszkania?', 'Maine Coon może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Maine Coon?', 'Maine Coon potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Maine Coon jest dobrym wyborem dla rodziny z dziećmi?', 'Maine Coon może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Maine Coon?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Maine Coon?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Maltańczyk nadaje się do mieszkania?', 'Maltańczyk może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Maltańczyk?', 'Maltańczyk potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Maltańczyk jest dobrym wyborem dla rodziny z dziećmi?', 'Maltańczyk może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Maltańczyk?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Maltańczyk?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Owczarek niemiecki nadaje się do mieszkania?', 'Owczarek niemiecki może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Owczarek niemiecki?', 'Owczarek niemiecki potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Owczarek niemiecki jest dobrym wyborem dla rodziny z dziećmi?', 'Owczarek niemiecki może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Owczarek niemiecki?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Owczarek niemiecki?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Pudel nadaje się do mieszkania?', 'Pudel może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Pudel?', 'Pudel potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Pudel jest dobrym wyborem dla rodziny z dziećmi?', 'Pudel może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Pudel?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Pudel?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Ragdoll nadaje się do mieszkania?', 'Ragdoll może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Ragdoll?', 'Ragdoll potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Ragdoll jest dobrym wyborem dla rodziny z dziećmi?', 'Ragdoll może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Ragdoll?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Ragdoll?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Rottweiler nadaje się do mieszkania?', 'Rottweiler może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Rottweiler?', 'Rottweiler potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Rottweiler jest dobrym wyborem dla rodziny z dziećmi?', 'Rottweiler może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Rottweiler?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Rottweiler?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Samoyed nadaje się do mieszkania?', 'Samoyed może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Samoyed?', 'Samoyed potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Samoyed jest dobrym wyborem dla rodziny z dziećmi?', 'Samoyed może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Samoyed?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Samoyed?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Sfinks nadaje się do mieszkania?', 'Sfinks może dobrze odnaleźć się w mieszkaniu, jeśli ma drapaki, miejsca do obserwacji, spokojną kuwetę i codzienną zabawę. Sam metraż jest mniej ważny niż jakość środowiska.', 10
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Sfinks?', 'Sfinks potrzebuje regularnych, krótkich sesji zabawy, wspinania i prostych zadań środowiskowych. Brak aktywności może sprzyjać nudzie i nadwadze.', 20
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Sfinks jest dobrym wyborem dla rodziny z dziećmi?', 'Sfinks może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Sfinks?', 'Pielęgnacja zależy od typu sierści i skóry. Warto regularnie kontrolować sierść, pazury, uszy, kuwetę i masę ciała, a zabiegi wprowadzać krótko i spokojnie.', 40
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Sfinks?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Shih Tzu nadaje się do mieszkania?', 'Shih Tzu może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Shih Tzu?', 'Shih Tzu potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Shih Tzu jest dobrym wyborem dla rodziny z dziećmi?', 'Shih Tzu może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Shih Tzu?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Shih Tzu?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Siberian Husky nadaje się do mieszkania?', 'Siberian Husky może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Siberian Husky?', 'Siberian Husky potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Siberian Husky jest dobrym wyborem dla rodziny z dziećmi?', 'Siberian Husky może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Siberian Husky?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Siberian Husky?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Sznaucer miniaturowy nadaje się do mieszkania?', 'Sznaucer miniaturowy może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Sznaucer miniaturowy?', 'Sznaucer miniaturowy potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Sznaucer miniaturowy jest dobrym wyborem dla rodziny z dziećmi?', 'Sznaucer miniaturowy może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Sznaucer miniaturowy?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Sznaucer miniaturowy?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Yorkshire Terrier nadaje się do mieszkania?', 'Yorkshire Terrier może mieszkać w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Przy tej rasie ogród nie zastępuje spacerów ani pracy z opiekunem.', 10
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile aktywności potrzebuje Yorkshire Terrier?', 'Yorkshire Terrier potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. Oprócz spacerów ważne są węszenie, nauka i spokojne wyciszanie po wysiłku.', 20
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Czy Yorkshire Terrier jest dobrym wyborem dla rodziny z dziećmi?', 'Yorkshire Terrier może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady kontaktu ze zwierzęciem. Trzeba pilnować odpoczynku, spokojnej zabawy i braku wymuszania kontaktu.', 30
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Jak pielęgnować rasę Yorkshire Terrier?', 'Pielęgnacja obejmuje sierść, pazury, uszy, zęby i kontrolę skóry. Najlepiej zacząć od krótkich, regularnych zabiegów, zanim pojawi się stres lub opór.', 40
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT id, 'Ile może kosztować utrzymanie rasy Yorkshire Terrier?', 'Koszt zależy od karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulator Futrio pomaga oszacować budżet, ale wynik warto traktować orientacyjnie.', 50
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'akita-inu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'beagle';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bengal';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bernenski-pies-pasterski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'bokser';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'border-collie';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'buldog-francuski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cane-corso';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cavalier-king-charles-spaniel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'chihuahua';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'cocker-spaniel-angielski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'golden-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jack-russell-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'jamnik';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-perski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'kot-syberyjski';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'labrador-retriever';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maine-coon';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'maltanczyk';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'owczarek-niemiecki';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'pudel';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'ragdoll';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'rottweiler';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'samoyed';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'TICA', 'The International Cat Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'CFA', 'Cat Fanciers’ Association', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FIFe', 'Fédération Internationale Féline', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'GCCF', 'Governing Council of the Cat Fancy', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'WCF', 'World Cat Federation', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sfinks';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'shih-tzu';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'siberian-husky';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'sznaucer-miniaturowy';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'FCI', 'Fédération Cynologique Internationale', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'AKC', 'American Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'KC', 'The Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'yorkshire-terrier';

INSERT OR REPLACE INTO breed_registry_recognitions (breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at)
SELECT id, 'UKC', 'United Kennel Club', 0, 'needs_verification', 'Status uznania wymaga późniejszej weryfikacji w oficjalnych źródłach.', NULL, NULL
FROM breeds WHERE slug = 'yorkshire-terrier';

-- BEGIN verified breed registry recognition statuses
UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Akita.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'akita-inu')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Beagle.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'beagle')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bernese Mountain Dog.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bernenski-pies-pasterski')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Boxer.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bokser')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Border Collie.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'border-collie')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: French Bulldog.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'buldog-francuski')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cane Corso.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cane Corso.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Italian Cane Corso.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cane Corso Italiano.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cane-corso')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cavalier King Charles Spaniel.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cavalier-king-charles-spaniel')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Chihuahua.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'chihuahua')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: English Cocker Spaniel.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: English Cocker Spaniel.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Cocker Spaniel.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: English Cocker Spaniel.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'cocker-spaniel-angielski')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Golden Retriever.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'golden-retriever')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Jack Russell Terrier.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Russell Terrier.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Jack Russell Terrier.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Jack Russell Terrier.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jack-russell-terrier')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Dachshund.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'jamnik')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Labrador Retriever.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'labrador-retriever')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maltese.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maltanczyk')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: German Shepherd Dog.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'owczarek-niemiecki')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Poodle.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'pudel')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Rottweiler.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'rottweiler')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Samoyed.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'samoyed')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Shih Tzu.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'shih-tzu')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian Husky.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'siberian-husky')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Miniature Schnauzer.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sznaucer-miniaturowy')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Cynologique Internationale',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.fci.be/en/Nomenclature/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'FCI';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'American Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.akc.org/dog-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'AKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The Royal Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.thekennelclub.org.uk/search/breeds-a-to-z/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'KC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'United Kennel Club',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Yorkshire Terrier.',
    source_url = 'https://www.ukcdogs.com/breed-standards',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'yorkshire-terrier')
  AND organization_code = 'UKC';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Bengal.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'bengal')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: British Shorthair.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-brytyjski-krotkowlosy')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Persian.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-perski')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Siberian.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'kot-syberyjski')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon Cat.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Maine Coon.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'maine-coon')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Ragdoll.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'ragdoll')
  AND organization_code = 'WCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'The International Cat Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://tica.org/browse-all-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'TICA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Cat Fanciers Association',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://cfa.org/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'CFA';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Fédération Internationale Féline',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://fifeweb.org/cats/breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'FIFe';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'Governing Council of the Cat Fancy',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://www.gccfcats.org/getting-a-cat/choosing/cat-breeds/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'GCCF';

UPDATE breed_registry_recognitions
SET recognized = 1,
    recognition_status = 'recognized',
    organization_name = 'World Cat Federation',
    note = 'Zweryfikowano w oficjalnej liście organizacji. Nazwa w źródle: Sphynx.',
    source_url = 'https://wcf.de/en/standard/',
    verified_at = '2026-06-22'
WHERE breed_id = (SELECT id FROM breeds WHERE slug = 'sfinks')
  AND organization_code = 'WCF';
-- END verified breed registry recognition statuses
