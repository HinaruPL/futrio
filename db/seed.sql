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

-- BEGIN FCI dog breeds batch 1
PRAGMA foreign_keys = ON;

-- FCI dog breeds pipeline: Batch 1 (2026-06-23).
-- Dodaje 25 nowych ras psów oraz komplet danych wymaganych przez strony ras.

WITH batch_breeds(
  name, slug, fci_name, fci_number, fci_group, fci_section, origin_country,
  traits, audience, home_note, activity_note, grooming_note, feeding_note, health_note,
  history_note, fun_fact,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max
) AS (
  VALUES
  ('Owczarek australijski', 'australian-shepherd', 'Australian Shepherd', '342', 'Group 1', 'Section 1', 'United States of America', 'inteligentny, energiczny i mocno nastawiony na współpracę pies pasterski', 'aktywnych opiekunów, którzy lubią trening, spacery i zadania węchowe', 'Najlepiej czuje się w domu z dobrze zaplanowaną aktywnością; metraż jest mniej ważny niż codzienna praca z psem.', 'Potrzebuje dużo ruchu oraz pracy głową: treningu, zabaw węchowych, nauki samokontroli i spokojnych spacerów.', 'Sierść wymaga regularnego szczotkowania, szczególnie przy linieniu i po spacerach w terenie.', 'Dieta powinna wspierać wysoką aktywność, ale porcje trzeba dopasować do realnego wysiłku.', 'Warto zwracać uwagę na stawy, oczy, skórę i reakcję na wysiłek.', 'Rasa powstała w Stanach Zjednoczonych jako wszechstronny pies pasterski, mimo nazwy kojarzącej się z Australią.', 'Nazwa rasy bywa myląca, bo jej nowoczesny typ rozwinął się głównie w USA.', 16, 32, 46, 58, 12, 15, 'high', 'medium', 'medium', 4, 2, 850, 1500),
  ('Welsh Corgi Pembroke', 'welsh-corgi-pembroke', 'Welsh Corgi (Pembroke)', '39', 'Group 1', 'Section 2', 'Great Britain', 'żywy, czujny i pewny siebie mały pies pasterski', 'opiekunów szukających niedużego, ale aktywnego psa z charakterem', 'Dobrze odnajduje się w mieszkaniu, jeśli ma ruch, naukę i kontrolę szczekania.', 'Potrzebuje codziennych spacerów, prostych ćwiczeń i zajęć dla głowy, mimo krótkich nóg.', 'Gęsta sierść linieje sezonowo i wymaga systematycznego szczotkowania.', 'Łatwo przybiera na wadze, dlatego porcje i przysmaki warto odmierzać bardzo uważnie.', 'Warto pilnować masy ciała, kręgosłupa i stawów.', 'Pembroke wywodzi się z Walii, gdzie pracował przy bydle i pomagał w gospodarstwach.', 'Krótki wzrost corgi nie oznacza małej osobowości ani niskiej potrzeby aktywności.', 9, 12, 25, 30, 12, 15, 'medium', 'medium', 'medium', 4, 4, 450, 750),
  ('Welsh Corgi Cardigan', 'welsh-corgi-cardigan', 'Welsh Corgi (Cardigan)', '38', 'Group 1', 'Section 2', 'Great Britain', 'czujny, lojalny i mocny mały pies pasterski', 'osób chcących niedużego psa pasterskiego z potrzebą pracy', 'Może mieszkać w bloku, jeśli ma rutynę, aktywność i miejsce do spokojnego odpoczynku.', 'Codzienne spacery, nauka i węszenie pomagają utrzymać go w dobrej równowadze.', 'Sierść trzeba regularnie czesać, zwłaszcza w okresie linienia.', 'Dieta powinna chronić przed nadwagą, bo dodatkowe kilogramy obciążają kręgosłup i stawy.', 'Warto obserwować kręgosłup, stawy i masę ciała.', 'Cardigan jest jedną z walijskich ras pasterskich, rozwijaną jako niski, wytrzymały pies do pracy przy stadach.', 'Cardigan i Pembroke są osobnymi rasami, choć dla wielu osób wyglądają podobnie.', 11, 17, 27, 32, 12, 15, 'medium', 'medium', 'medium', 4, 4, 500, 850),
  ('Doberman', 'doberman', 'Dobermann', '143', 'Group 2', 'Section 1.1', 'Germany', 'elegancki, czujny i bardzo związany z opiekunem pies', 'świadomych opiekunów, którzy chcą trenować psa regularnie i spokojnie', 'Najlepiej funkcjonuje blisko rodziny, z przewidywalnym planem dnia i bez izolacji.', 'Potrzebuje ruchu, szkolenia, pracy węchowej i nauki wyciszania po pobudzeniu.', 'Krótka sierść jest łatwa w pielęgnacji, ale warto kontrolować skórę, pazury i uszy.', 'Żywienie powinno wspierać masę mięśniową i stabilną kondycję bez nadwagi.', 'U rasy warto omawiać z lekarzem profilaktykę serca, stawów i ogólną kondycję.', 'Dobermann powstał w Niemczech jako pies użytkowy łączący czujność, szybkość reakcji i silną więź z człowiekiem.', 'Doberman jest bardzo wrażliwy na relację z opiekunem, mimo atletycznego wyglądu.', 27, 45, 63, 72, 10, 13, 'high', 'low', 'medium', 4, 2, 1100, 1800),
  ('Dalmatyńczyk', 'dalmatynczyk', 'Dalmatinski Pas (Dalmatian)', '153', 'Group 6', 'Section 3', 'Croatia', 'aktywny, towarzyski i rozpoznawalny dzięki cętkowanej sierści pies', 'aktywnych rodzin, które lubią długie spacery i konsekwentną naukę', 'Może mieszkać w mieszkaniu tylko przy dużej dawce ruchu i spokojnej rutynie.', 'Potrzebuje długich spacerów, biegania w kontrolowanych warunkach i zajęć umysłowych.', 'Krótka sierść jest prosta w pielęgnacji, ale rasa potrafi intensywnie gubić włos.', 'Dieta powinna być omawiana z lekarzem przy szczególnych potrzebach zdrowotnych.', 'Warto zwracać uwagę na słuch, układ moczowy i kondycję skóry.', 'Dalmatyńczyk jest rasą o długiej historii, kojarzoną z psami towarzyszącymi powozom.', 'Cętki dalmatyńczyka są najbardziej znaną cechą wyglądu, ale rasa wymaga dużo ruchu.', 20, 32, 54, 62, 11, 13, 'high', 'low', 'medium', 4, 2, 900, 1500),
  ('Nowofundland', 'nowofundland', 'Newfoundland', '50', 'Group 2', 'Section 2.2', 'Canada', 'duży, łagodny i spokojny pies o gęstej sierści', 'osób z miejscem, budżetem i czasem na pielęgnację dużego psa', 'Najlepiej czuje się w przestronnym domu, ale najważniejsza jest bliskość rodziny i chłodne miejsce odpoczynku.', 'Potrzebuje umiarkowanego, regularnego ruchu bez przeciążania, zwłaszcza w upały.', 'Gęsta sierść wymaga częstego szczotkowania i dokładnego suszenia po zamoczeniu.', 'Żywienie dużego psa musi wspierać stawy i prawidłową masę ciała.', 'Warto kontrolować stawy, serce, masę ciała i tolerancję wysiłku.', 'Nowofundland rozwinął się jako silny pies pracujący przy wodzie, ceniony za spokojny charakter i wytrzymałość.', 'Nowofundland potrafi wyglądać jak spokojny olbrzym, ale jego utrzymanie wymaga realnego budżetu.', 45, 70, 63, 74, 8, 10, 'medium', 'high', 'medium', 5, 1, 1700, 2600),
  ('Dog niemiecki', 'dog-niemiecki', 'Deutsche Dogge (Great Dane)', '235', 'Group 2', 'Section 2.1', 'Germany', 'bardzo duży, elegancki i zwykle spokojny pies rodzinny', 'opiekunów gotowych na rozmiar, koszty i odpowiedzialne prowadzenie olbrzyma', 'Potrzebuje miejsca do wygodnego odpoczynku i bezpiecznego poruszania się, zwłaszcza w młodym wieku.', 'Aktywność powinna być regularna, ale rozsądna; u młodego psa trzeba unikać przeciążeń.', 'Krótka sierść jest łatwa, za to trzeba dbać o pazury, skórę i komfort legowiska.', 'Żywienie olbrzyma wymaga kontroli tempa wzrostu, jakości karmy i masy ciała.', 'Warto omawiać z lekarzem profilaktykę stawów, serca i ryzyko problemów typowych dla ras olbrzymich.', 'Dog niemiecki był rozwijany w Niemczech jako duży pies o eleganckiej sylwetce i spokojnej sile.', 'Dog niemiecki robi ogromne wrażenie, ale w domu potrzebuje przede wszystkim wygody i spokojnych zasad.', 45, 80, 72, 86, 7, 10, 'medium', 'low', 'medium', 4, 1, 1800, 3000),
  ('Chart afgański', 'chart-afganski', 'Afghan Hound', '228', 'Group 10', 'Section 1', 'Afghanistan', 'niezależny, elegancki chart o długiej jedwabistej sierści', 'osób ceniących niezależne psy i gotowych na intensywną pielęgnację', 'Potrzebuje spokojnego domu, bezpiecznego terenu do ruchu i miejsca na odpoczynek.', 'Potrzebuje ruchu, ale także bezpiecznych warunków, bo instynkt pogoni może być silny.', 'Długa sierść wymaga regularnego, dokładnego czesania i zabezpieczania przed kołtunami.', 'Dieta powinna utrzymywać smukłą sylwetkę i dobrą kondycję sierści.', 'Warto obserwować skórę, oczy, stawy i reakcje na wysiłek.', 'Chart afgański wywodzi się z terenów Azji Środkowej, gdzie ceniono szybkość, niezależność i odporność.', 'Efektowna sierść chartów afgańskich wymaga pracy, a nie tylko okazjonalnego czesania.', 20, 27, 63, 74, 12, 14, 'medium', 'high', 'hard', 3, 2, 850, 1300),
  ('Whippet', 'whippet', 'Whippet', '162', 'Group 10', 'Section 3', 'Great Britain', 'smukły, łagodny i szybki chart krótkodystansowy', 'osób chcących spokojnego w domu, ale szybkiego na spacerze psa', 'Dobrze odnajduje się w mieszkaniu, jeśli ma miękkie miejsce odpoczynku i regularne spacery.', 'Potrzebuje spacerów i okazji do bezpiecznego rozładowania szybkości, najlepiej na ogrodzonym terenie.', 'Krótka sierść jest łatwa, ale pies może marznąć i potrzebować ochrony w chłodzie.', 'Żywienie powinno utrzymywać szczupłą, umięśnioną sylwetkę bez nadwagi.', 'Warto pilnować urazów, skóry i komfortu termicznego.', 'Whippet powstał w Wielkiej Brytanii jako mniejszy chart, łączący szybkość z poręcznym rozmiarem.', 'Whippet potrafi być bardzo spokojny w domu, a chwilę później imponująco szybki.', 10, 15, 44, 51, 12, 15, 'medium', 'low', 'medium', 4, 4, 550, 900),
  ('Bichon Frise', 'bichon-frise', 'Bichon Frise', '215', 'Group 9', 'Section 1', 'Belgium/France', 'pogodny, towarzyski i mały pies o białej kręconej sierści', 'opiekunów szukających małego psa rodzinnego i gotowych na pielęgnację', 'Bardzo dobrze nadaje się do mieszkania, jeśli ma kontakt z opiekunem i krótkie aktywności.', 'Potrzebuje regularnych spacerów, zabawy i prostych ćwiczeń, ale nie ekstremalnego wysiłku.', 'Sierść wymaga częstego czesania i zwykle regularnych wizyt u groomera.', 'Małe porcje muszą być dobrze odmierzone, bo nadwaga szybko wpływa na komfort psa.', 'Warto kontrolować zęby, skórę, oczy i wagę.', 'Bichon Frise należy do grupy małych psów do towarzystwa, rozwijanych w Europie jako pogodne psy domowe.', 'Biała, puszysta sylwetka bichona wymaga systematycznej pielęgnacji.', 4, 7, 23, 30, 12, 15, 'medium', 'high', 'easy', 4, 5, 250, 450),
  ('Hawańczyk', 'hawanczyk', 'Havanese', '250', 'Group 9', 'Section 1', 'Cuba', 'wesoły, czuły i towarzyski pies do mieszkania', 'rodzin i osób szukających małego psa blisko człowieka', 'Bardzo dobrze odnajduje się w mieszkaniu, ale źle znosi długą izolację od ludzi.', 'Lubi spacery, zabawę i naukę sztuczek, ale potrzebuje też wyciszenia.', 'Jedwabista sierść wymaga regularnego czesania albo praktycznej fryzury utrzymywanej u groomera.', 'Dieta powinna być dopasowana do małej masy ciała, z kontrolą przysmaków.', 'Warto zwracać uwagę na zęby, oczy, skórę i masę ciała.', 'Hawańczyk rozwinął się jako pies do towarzystwa związany z Kubą i rodziną bichonów.', 'Hawańczyk bywa mały, ale często ma dużą potrzebę uczestniczenia w życiu rodziny.', 4, 7, 23, 27, 13, 16, 'medium', 'high', 'easy', 5, 5, 250, 450),
  ('West Highland White Terrier', 'west-highland-white-terrier', 'West Highland White Terrier', '85', 'Group 3', 'Section 2', 'Great Britain', 'odważny, żywy i pewny siebie mały terier', 'osób lubiących małe psy z energią i charakterem teriera', 'Może mieszkać w bloku, jeśli ma spacery, zajęcia i jasne zasady szczekania.', 'Potrzebuje codziennych spacerów, węszenia i okazji do rozładowania terierowej energii.', 'Biała sierść wymaga regularnej pielęgnacji, czesania i kontroli skóry.', 'Porcje warto kontrolować, bo mały pies łatwo dostaje za dużo przysmaków.', 'Warto obserwować skórę, uszy i masę ciała.', 'West Highland White Terrier wywodzi się ze szkockich terierów użytkowych.', 'Westie wygląda niewinnie, ale ma typową dla terierów pewność siebie.', 6, 10, 25, 28, 12, 16, 'medium', 'medium', 'medium', 4, 4, 350, 600),
  ('Boston Terrier', 'boston-terrier', 'Boston Terrier', '140', 'Group 9', 'Section 11', 'United States of America', 'kompaktowy, kontaktowy i pogodny pies miejski', 'osób szukających małego psa rodzinnego o krótkiej sierści', 'Dobrze nadaje się do mieszkania, ale wymaga ochrony przed upałem i przeciążeniem.', 'Potrzebuje umiarkowanego ruchu, zabawy i nauki, bez forsowania w gorące dni.', 'Krótka sierść jest łatwa, ale trzeba kontrolować fałdy, oczy i pazury.', 'Dieta powinna pomagać utrzymać prawidłową masę i dobrą kondycję przewodu pokarmowego.', 'Warto zwracać uwagę na oddech, oczy, skórę i tolerancję upałów.', 'Boston Terrier powstał w Stanach Zjednoczonych jako niewielki pies do towarzystwa.', 'Boston Terrier bywa nazywany psem w smokingu przez swoje umaszczenie.', 5, 11, 38, 43, 11, 13, 'medium', 'low', 'easy', 4, 5, 350, 650),
  ('Shar Pei', 'shar-pei', 'Shar Pei', '309', 'Group 2', 'Section 2.1', 'China', 'spokojny, niezależny i rozpoznawalny dzięki pofałdowanej skórze pies', 'doświadczonych opiekunów, którzy szanują niezależność psa', 'Potrzebuje spokojnego domu, przewidywalnych zasad i dobrej socjalizacji.', 'Potrzebuje umiarkowanego ruchu i spokojnej pracy nad relacją, bez nadmiaru presji.', 'Trzeba regularnie kontrolować skórę, uszy i fałdy, bez przesuszania lub drażnienia.', 'Dieta powinna być stabilna i obserwowana pod kątem reakcji skóry oraz przewodu pokarmowego.', 'U rasy warto omawiać ze specjalistą skórę, oczy, uszy i ogólną kondycję.', 'Shar Pei pochodzi z Chin i był rozwijany jako pies niezależny, czujny oraz odporny.', 'Fałdy Shar Peia są efektowne, ale wymagają uważnej kontroli skóry.', 18, 30, 44, 51, 9, 12, 'medium', 'medium', 'hard', 3, 3, 750, 1200),
  ('Chow Chow', 'chow-chow', 'Chow Chow', '205', 'Group 5', 'Section 5', 'China', 'dumny, spokojny i niezależny pies o obfitej sierści', 'opiekunów ceniących niezależne rasy i gotowych na pielęgnację', 'Potrzebuje spokojnego, przewidywalnego domu i ochrony przed przegrzaniem.', 'Wymaga regularnych spacerów, ale bez przeciążania i bez forsowania w upały.', 'Obfita sierść wymaga systematycznego szczotkowania i kontroli skóry.', 'Dieta powinna wspierać prawidłową masę ciała i dobrą kondycję skóry oraz sierści.', 'Warto zwracać uwagę na oczy, skórę, stawy i tolerancję ciepła.', 'Chow Chow należy do starych ras azjatyckich, kojarzonych z niezależnością i czujnością.', 'Chow Chow słynie z obfitej sierści i niebieskoczarnego języka.', 20, 32, 46, 56, 9, 12, 'medium', 'high', 'hard', 3, 2, 850, 1300),
  ('Basenji', 'basenji', 'Basenji', '43', 'Group 5', 'Section 6', 'Central Africa', 'mały, elegancki i bardzo niezależny pies pierwotny', 'opiekunów akceptujących samodzielność, spryt i silny instynkt pogoni', 'Może mieszkać w mieszkaniu, jeśli ma zabezpieczone spacery i zajęcie głowy.', 'Potrzebuje ruchu, węszenia i bezpiecznych warunków, bo bywa szybki i samodzielny.', 'Krótka sierść jest łatwa, a pies często dba o czystość, ale pazury i zęby wymagają kontroli.', 'Porcje trzeba dopasować do aktywności i pilnować smukłej sylwetki.', 'Warto obserwować układ moczowy, trawienie, oczy i ogólną kondycję.', 'Basenji pochodzi z Afryki Środkowej i należy do ras pierwotnych, zachowujących dużą samodzielność.', 'Basenji jest znany z nietypowej wokalizacji, często opisywanej jako jodłowanie.', 9, 12, 40, 43, 12, 14, 'high', 'low', 'hard', 3, 3, 500, 800),
  ('Papillon', 'papillon', 'Epagneul Nain Continental (Continental Toy Spaniel)', '77', 'Group 9', 'Section 9', 'Belgium/France', 'mały, bystry i żywy pies z charakterystycznymi uszami', 'osób szukających małego, inteligentnego psa do aktywnego towarzystwa', 'Bardzo dobrze nadaje się do mieszkania, jeśli ma zabawę, naukę i spokojny odpoczynek.', 'Lubi spacery, sztuczki i ćwiczenia umysłowe, mimo niewielkiego rozmiaru.', 'Sierść wymaga regularnego czesania, zwłaszcza przy uszach i ogonie.', 'Małe porcje powinny być dobrze odmierzone, a smakołyki wliczone w dzienną dawkę.', 'Warto obserwować zęby, kolana i oczy.', 'Papillon jest odmianą kontynentalnego spaniela miniaturowego, rozwijanego w Europie jako elegancki pies do towarzystwa.', 'Nazwa Papillon oznacza motyla i odnosi się do kształtu uszu.', 2, 5, 20, 28, 13, 16, 'medium', 'medium', 'easy', 4, 5, 180, 350),
  ('Pomeranian', 'pomeranian', 'Deutscher Spitz (German Spitz) - Pomeranian', '97', 'Group 5', 'Section 4', 'Germany', 'mały, puszysty i czujny szpic o dużej osobowości', 'opiekunów szukających małego psa, ale gotowych na pielęgnację i naukę wyciszania', 'Świetnie pasuje do mieszkania, jeśli opiekun pracuje nad szczekaniem i spokojem.', 'Potrzebuje krótkich spacerów, zabawy i ćwiczeń, które zajmują głowę.', 'Obfita sierść wymaga regularnego czesania i kontroli podszerstka.', 'Porcje muszą być małe i precyzyjne, bo nadwaga szybko obciąża drobny organizm.', 'Warto pilnować zębów, tchawicy, kolan i masy ciała.', 'Pomeranian jest najmniejszą odmianą szpica niemieckiego w nomenklaturze FCI.', 'W FCI Pomeranian występuje jako odmiana w standardzie Deutscher Spitz.', 2, 4, 18, 24, 12, 16, 'medium', 'high', 'medium', 3, 5, 180, 330),
  ('Owczarek australijski kelpie', 'owczarek-australijski-kelpie', 'Australian Kelpie', '293', 'Group 1', 'Section 1', 'Australia', 'atletyczny, pracowity i bardzo wytrzymały pies pasterski', 'aktywnych opiekunów gotowych zapewnić zadania i trening', 'Najlepiej odnajduje się tam, gdzie codziennie ma sensowną aktywność, nie tylko ogród.', 'Potrzebuje dużo ruchu, zadań węchowych, treningu i nauki odpoczynku po pracy.', 'Krótka sierść jest łatwa w utrzymaniu, choć po terenie trzeba sprawdzać łapy i skórę.', 'Dieta powinna odpowiadać wysokiej aktywności, ale być korygowana w dni spokojniejsze.', 'Warto kontrolować stawy, urazy po wysiłku i ogólną kondycję sportową.', 'Australian Kelpie powstał w Australii jako wytrzymały pies pasterski do pracy w wymagających warunkach.', 'Kelpie to pies stworzony do pracy, więc samo zmęczenie fizyczne zwykle nie wystarcza.', 14, 21, 43, 51, 12, 15, 'high', 'low', 'medium', 4, 2, 750, 1200),
  ('Owczarek szetlandzki', 'owczarek-szetlandzki', 'Shetland Sheepdog', '88', 'Group 1', 'Section 1', 'Great Britain', 'wrażliwy, inteligentny i czujny mały pies pasterski', 'opiekunów lubiących naukę, delikatne prowadzenie i regularną pielęgnację', 'Może dobrze żyć w mieszkaniu, jeśli ma rutynę i pracę nad szczekaniem.', 'Lubi spacery, trening, zabawy węchowe i ćwiczenia wymagające skupienia.', 'Długa sierść wymaga systematycznego czesania, szczególnie za uszami i w portkach.', 'Porcje warto odmierzać, bo mały pies szybko reaguje na nadmiar kalorii.', 'Warto obserwować oczy, skórę, stawy i reakcje na leki po konsultacji z lekarzem.', 'Owczarek szetlandzki pochodzi z Wysp Szetlandzkich, gdzie ceniono nieduże, zwinne psy pasterskie.', 'Sheltie często szybko się uczy, ale równie szybko uczy się niepożądanych nawyków.', 6, 12, 33, 41, 12, 14, 'medium', 'high', 'easy', 4, 4, 350, 650),
  ('Wyżeł weimarski', 'wyzel-weimarski', 'Weimaraner', '99', 'Group 7', 'Section 1.1', 'Germany', 'atletyczny, elegancki i silnie związany z opiekunem pies myśliwski', 'aktywnych osób gotowych na dużo ruchu i naukę samokontroli', 'Potrzebuje bliskości rodziny i aktywnego trybu dnia; samotność bywa trudna.', 'Wymaga długich spacerów, pracy węchowej, treningu i bezpiecznego rozładowania energii.', 'Krótka sierść jest łatwa, ale trzeba kontrolować uszy, łapy i pazury.', 'Dieta powinna wspierać aktywny organizm i stabilną masę ciała.', 'Warto omawiać z lekarzem stawy, żołądek, uszy i kondycję przy dużym wysiłku.', 'Wyżeł weimarski powstał w Niemczech jako pies myśliwski, ceniony za nos, wytrzymałość i kontakt z przewodnikiem.', 'Srebrzystoszara sierść wyżła weimarskiego jest jedną z najbardziej rozpoznawalnych cech rasy.', 25, 40, 57, 70, 10, 13, 'high', 'low', 'medium', 4, 2, 1100, 1800),
  ('Vizsla', 'vizsla', 'Rövidszörü Magyar Vizsla (Hungarian Short-haired Pointer)', '57', 'Group 7', 'Section 1.1', 'Hungary', 'rdzawy, energiczny i bardzo kontaktowy wyżeł węgierski', 'aktywnych rodzin i osób, które chcą psa blisko człowieka', 'Najlepiej czuje się jako część rodziny, z dużą dawką ruchu i spokojnym odpoczynkiem.', 'Potrzebuje intensywnych spacerów, pracy węchowej, aportowania i treningu.', 'Krótka sierść jest łatwa, ale po aktywności warto sprawdzać łapy i uszy.', 'Dieta powinna wspierać wysoki poziom ruchu i utrzymywać szczupłą sylwetkę.', 'Warto kontrolować skórę, stawy, uszy i reakcje na wysiłek.', 'Vizsla była rozwijana jako wszechstronny pies myśliwski blisko współpracujący z człowiekiem.', 'Vizsla jest często nazywana psem na rzep, bo wiele osobników bardzo szuka bliskości opiekuna.', 18, 30, 54, 64, 12, 14, 'high', 'low', 'easy', 5, 2, 900, 1500),
  ('Rhodesian Ridgeback', 'rhodesian-ridgeback', 'Rhodesian Ridgeback', '146', 'Group 6', 'Section 3', 'South Africa', 'silny, atletyczny i niezależny pies z charakterystyczną pręgą na grzbiecie', 'doświadczonych opiekunów, którzy cenią spokojną konsekwencję', 'Potrzebuje przestrzeni, ruchu i jasnych zasad, ale także bliskości rodziny.', 'Potrzebuje długich spacerów, treningu i bezpiecznej aktywności bez przeciążania.', 'Krótka sierść jest łatwa, ale warto kontrolować skórę, łapy i pazury.', 'Żywienie powinno utrzymywać mocną, ale nieprzekarmioną sylwetkę.', 'Warto zwracać uwagę na stawy, skórę i ogólną kondycję.', 'Rhodesian Ridgeback rozwinął się w południowej Afryce jako pies użytkowy, ceniony za wytrzymałość i samodzielność.', 'Pręga na grzbiecie rośnie w przeciwnym kierunku niż reszta sierści i dała rasie nazwę.', 29, 41, 61, 69, 10, 12, 'high', 'low', 'hard', 4, 2, 1100, 1800),
  ('Pies faraona', 'pies-faraona', 'Pharaoh Hound', '248', 'Group 5', 'Section 6', 'Malta', 'elegancki, szybki i wrażliwy pies pierwotny', 'aktywnych opiekunów, którzy zapewnią bezpieczny ruch i delikatne prowadzenie', 'Może mieszkać w domu lub mieszkaniu, jeśli ma ruch i ciepłe miejsce odpoczynku.', 'Potrzebuje ruchu, węszenia i możliwości biegu w bezpiecznym, ogrodzonym miejscu.', 'Krótka sierść jest łatwa, ale pies może potrzebować ochrony przed chłodem.', 'Dieta powinna utrzymywać szczupłą sylwetkę i energię bez nadwagi.', 'Warto obserwować skórę, urazy po bieganiu i komfort termiczny.', 'Pies faraona jest rasą związaną z Maltą i typem psów pierwotnych używanych do polowania.', 'Pies faraona może wyraźnie czerwienić uszy i nos przy pobudzeniu.', 18, 27, 53, 63, 12, 14, 'high', 'low', 'medium', 4, 3, 750, 1200),
  ('Alaskan Malamute', 'alaskan-malamute', 'Alaskan Malamute', '243', 'Group 5', 'Section 1', 'United States of America', 'silny, północny pies zaprzęgowy o dużej wytrzymałości', 'aktywnych, doświadczonych opiekunów gotowych na pracę z dużym psem północnym', 'Najlepiej czuje się w domu z przestrzenią, chłodnym miejscem i bardzo dobrą rutyną.', 'Potrzebuje długich spacerów, ciągnięcia w kontrolowanych warunkach, węszenia i pracy nad przywołaniem.', 'Gęsta sierść intensywnie linieje i wymaga częstego szczotkowania, szczególnie sezonowo.', 'Dieta musi odpowiadać dużej masie i aktywności, ale nadwaga mocno obciąża stawy.', 'Warto kontrolować stawy, oczy, masę ciała i tolerancję wysiłku w cieple.', 'Alaskan Malamute powstał jako pies zaprzęgowy do ciężkiej pracy w trudnym, północnym klimacie.', 'Malamute był selekcjonowany do siły i wytrzymałości, a nie do szybkich sprintów.', 34, 45, 58, 64, 10, 14, 'high', 'high', 'hard', 4, 1, 1400, 2200)
)
INSERT INTO breeds (
  name, slug, species, short_description, long_description,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max,
  meta_title, meta_description, h1, status
)
SELECT
  name,
  slug,
  'dog',
  name || ' to ' || traits || '.',
  name || ' to rasa dla opiekunów, którzy rozumieją jej codzienne potrzeby. To ' || traits || ', dlatego wymaga ruchu, żywienia i pielęgnacji dopasowanych do wieku, zdrowia oraz trybu życia. Opis Futrio pomaga zaplanować opiekę, ale nie zastępuje rozmowy z hodowcą, behawiorystą ani lekarzem weterynarii.',
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
  name || ' - opis rasy, charakter i koszty | Futrio',
  'Poznaj rasę ' || name || ': charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.',
  name || ' - opis rasy, charakter i koszty utrzymania',
  'published'
FROM batch_breeds
WHERE true
ON CONFLICT(slug) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
),
section_templates(section_key, heading, sort_order, body_template) AS (
  VALUES
  ('history', 'Historia rasy', 5, 'Rasa {name} jest częścią oficjalnej nomenklatury FCI i została dodana do Futrio w pierwszym batchu rozbudowy psów. Jej historia jest związana z krajem pochodzenia i pierwotnym użytkowaniem, które nadal wpływają na temperament oraz potrzeby opiekuńcze.\n\nW praktyce historia rasy pomaga zrozumieć, dlaczego {name} wymaga określonego poziomu aktywności, pielęgnacji i prowadzenia. Ten opis jest redakcyjnym punktem startu do dalszej, pogłębionej weryfikacji w kolejnych etapach.'),
  ('character', 'Charakter', 10, '{name} ma cechy typowe dla swojej grupy FCI, ale codzienne zachowanie zawsze zależy od konkretnego psa, socjalizacji i sposobu prowadzenia. Opiekun powinien obserwować reakcje na ludzi, inne zwierzęta, samotność i pobudzenie.\n\nNajlepsze efekty daje spokojne, konsekwentne wychowanie oparte na nagradzaniu dobrych zachowań. Rasa nie powinna być wybierana wyłącznie po wyglądzie lub popularności, bo potrzeby dnia codziennego są ważniejsze niż pierwsze wrażenie.'),
  ('for_whom', 'Dla kogo będzie dobrym wyborem', 20, '{name} będzie dobrym wyborem dla osób, które przed decyzją realnie ocenią czas na spacery, pielęgnację, szkolenie i budżet. Warto porozmawiać z odpowiedzialnym hodowcą oraz sprawdzić potrzeby konkretnej linii.\n\nTo rasa dla opiekuna gotowego na rutynę, cierpliwość i dopasowanie wymagań do wieku psa. Jeśli dom nie ma czasu na pracę z psem, lepiej odłożyć decyzję niż liczyć, że sama rasa rozwiąże codzienne wyzwania.'),
  ('home_and_apartment', 'Dom i mieszkanie', 30, '{name} może funkcjonować w domu lub mieszkaniu, jeśli opiekun zapewni przewidywalny plan dnia i miejsce do odpoczynku. Sam metraż nie zastępuje spacerów, kontaktu z człowiekiem ani pracy nad spokojem.\n\nW mieszkaniu szczególnie ważna jest nauka wyciszania po aktywności oraz kontrola szczekania lub pobudzenia. Ogród jest dodatkiem, ale nie powinien być jedyną formą aktywności.'),
  ('children_and_family', 'Dzieci i rodzina', 40, '{name} może odnaleźć się w rodzinie, jeśli kontakty z dziećmi są spokojne i nadzorowane. Dzieci powinny wiedzieć, że pies ma prawo do odpoczynku, jedzenia i odejścia z sytuacji.\n\nDorosły odpowiada za bezpieczeństwo obu stron. Wspólne życie jest łatwiejsze, gdy od początku obowiązują proste zasady: nie budzić psa, nie zabierać mu zabawek i nie prowokować gonitw.'),
  ('activity', 'Aktywność', 50, 'Aktywność rasy {name} powinna łączyć ruch, węszenie, krótkie ćwiczenia i odpoczynek. Nawet spokojniejszy pies potrzebuje jakościowych spacerów, a bardziej energiczny nie powinien być tylko fizycznie nakręcany.\n\nDobry plan dnia obejmuje także pracę głową i naukę wyciszenia. Zbyt mało zajęcia może prowadzić do frustracji, ale nadmiar bodźców bez odpoczynku również pogarsza codzienne zachowanie.'),
  ('grooming', 'Pielęgnacja', 60, 'Pielęgnacja rasy {name} powinna obejmować sierść, pazury, uszy, zęby, łapy i kontrolę skóry. Regularne, krótkie zabiegi są zwykle skuteczniejsze niż rzadkie nadrabianie zaniedbań.\n\nZakres pielęgnacji zależy od typu sierści, aktywności i pory roku. W razie problemów skórnych, kołtunów, bólu przy dotyku lub nawracających stanów zapalnych warto skonsultować się ze specjalistą.'),
  ('feeding', 'Żywienie', 70, 'Żywienie rasy {name} powinno być dopasowane do wieku, masy ciała, aktywności, kastracji i stanu zdrowia. Zakres kalorii na Futrio jest orientacyjny i ma pomagać w planowaniu, a nie zastępować zaleceń lekarza weterynarii.\n\nWarto odmierzać porcje, kontrolować przysmaki i regularnie sprawdzać sylwetkę psa. Nagłe zmiany apetytu, masy ciała lub trawienia powinny być omówione z lekarzem.'),
  ('health', 'Zdrowie', 80, 'Informacje zdrowotne dla rasy {name} mają charakter orientacyjny. Opiekun powinien obserwować masę ciała, chód, skórę, apetyt, oddech i poziom energii, szczególnie po zmianie karmy lub intensywności ruchu.\n\nFutrio nie diagnozuje chorób. Każda kulawizna, duszność, przewlekły świąd, biegunka, nagłe osłabienie albo ból wymagają konsultacji z lekarzem weterynarii.'),
  ('costs', 'Koszty utrzymania', 90, 'Koszty utrzymania rasy {name} obejmują karmę, profilaktykę weterynaryjną, zabezpieczenie przeciw pasożytom, pielęgnację, akcesoria i rezerwę na nagłe leczenie. Wydatki rosną wraz z wielkością psa, wymaganiami sierści i potrzebami zdrowotnymi.\n\nKalkulator kosztów Futrio pomaga oszacować miesięczny budżet, ale wynik jest orientacyjny. Ceny zależą od miasta, jakości produktów, standardu opieki oraz indywidualnych potrzeb zwierzęcia.'),
  ('common_mistakes', 'Częste błędy opiekunów', 100, 'Najczęstszy błąd przy rasie {name} to wybór pod wpływem wyglądu, mody lub krótkiego opisu, bez sprawdzenia codziennych obowiązków. Drugim błędem jest odkładanie wychowania, pielęgnacji i kontroli masy ciała na później.\n\nWarto od początku uczyć spokojnego chodzenia na smyczy, przywołania, odpoczynku i akceptowania podstawowych zabiegów. Dobre nawyki są łatwiejsze niż naprawianie utrwalonych problemów.'),
  ('fun_facts', 'Ciekawostki', 110, '{name} ma cechy, które najlepiej widać w codziennych drobiazgach: sposobie odpoczynku, zabawy, kontaktu z opiekunem i reagowania na nowe bodźce. Właśnie te szczegóły często decydują, czy rasa pasuje do danego domu.\n\nCiekawostki są dobrym początkiem poznawania rasy, ale nie zastępują rozmowy z hodowcą i obserwacji konkretnego psa. Przy wyborze warto patrzeć na potrzeby, a nie tylko na efektowny wygląd.'),
  ('faq', 'FAQ', 120, 'P: Czy {name} nadaje się do mieszkania?\nO: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.\n\nP: Ile aktywności potrzebuje {name}?\nO: Aktywność trzeba dopasować do wieku, zdrowia i temperamentu psa, łącząc ruch z pracą umysłową oraz odpoczynkiem.\n\nP: Ile kosztuje utrzymanie tej rasy?\nO: Koszty zależą od karmy, profilaktyki, pielęgnacji i indywidualnych potrzeb zdrowotnych.')
)
INSERT INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT
  b.id,
  t.section_key,
  t.heading,
  replace(t.body_template, '{name}', b.name),
  t.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN section_templates t
WHERE true
ON CONFLICT(breed_id, section_key) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
),
faq_templates(question_template, answer_template, sort_order) AS (
  VALUES
  ('Czy {name} nadaje się do mieszkania?', '{name} może odnaleźć się w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Ważniejsze od metrażu są codzienne potrzeby konkretnego psa.', 10),
  ('Ile aktywności potrzebuje {name}?', '{name} potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. W planie dnia powinny znaleźć się spacery, węszenie, nauka i spokojny odpoczynek.', 20),
  ('Czy {name} jest dobrym wyborem dla rodziny z dziećmi?', '{name} może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady spokojnego kontaktu. Dorosły powinien nadzorować zabawę i pilnować odpoczynku psa.', 30),
  ('Jak pielęgnować rasę {name}?', 'Pielęgnacja powinna obejmować sierść, pazury, uszy, zęby i kontrolę skóry. Zakres zabiegów zależy od typu sierści oraz stylu życia psa.', 40),
  ('Ile może kosztować utrzymanie rasy {name}?', 'Koszt zależy od jakości karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulatory Futrio podają wartości orientacyjne.', 50)
)
INSERT INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT
  b.id,
  replace(f.question_template, '{name}', b.name),
  replace(f.answer_template, '{name}', b.name),
  f.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN faq_templates f
WHERE true
ON CONFLICT(breed_id, question) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
INSERT INTO calculator_profiles (
  breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier,
  monthly_food_cost_min_pln, monthly_food_cost_max_pln,
  grooming_cost_min_pln, grooming_cost_max_pln,
  vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes
)
SELECT
  b.id,
  CASE b.activity_level WHEN 'high' THEN 1.6 WHEN 'medium' THEN 1.4 ELSE 1.2 END,
  2.0,
  1.2,
  CASE WHEN b.weight_max_kg >= 40 THEN 300 WHEN b.weight_max_kg >= 20 THEN 220 WHEN b.weight_max_kg >= 10 THEN 150 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 40 THEN 650 WHEN b.weight_max_kg >= 20 THEN 480 WHEN b.weight_max_kg >= 10 THEN 320 ELSE 220 END,
  CASE b.grooming_level WHEN 'high' THEN 120 WHEN 'medium' THEN 70 ELSE 40 END,
  CASE b.grooming_level WHEN 'high' THEN 280 WHEN 'medium' THEN 160 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 120 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 90 ELSE 60 END,
  'Profil kalkulatora dla FCI Batch 1. Wartości orientacyjne do późniejszej weryfikacji redakcyjnej.'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE true
ON CONFLICT(breed_id) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT
  b.id,
  '/breeds/photos/' || b.slug || '.png',
  b.name || ' - zdjęcie rasy',
  b.name || ' - zdjęcie rasy',
  'ai_generated',
  1,
  10
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM breed_images existing WHERE existing.breed_id = b.id AND existing.is_primary = 1
);

WITH batch_slugs(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
)
INSERT INTO affiliate_links (
  breed_id, label, category, url, merchant, network, priority, is_active,
  anchor_text, description, placement, disclosure, button_label
)
SELECT
  b.id,
  'Polecane produkty dla rasy ' || b.name,
  'dry_food',
  'https://example.com/link-afiliacyjny-placeholder',
  'Placeholder',
  'placeholder',
  100,
  1,
  'Sprawdź polecane produkty dla tej rasy',
  'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.',
  'feeding_section',
  'Link może mieć charakter afiliacyjny.',
  'Zobacz polecane produkty'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM affiliate_links al WHERE al.breed_id = b.id AND al.merchant = 'Placeholder'
);

WITH batch_recognitions(slug, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at) AS (
  VALUES
  ('australian-shepherd','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Australian Shepherd; numer FCI: 342.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('welsh-corgi-pembroke','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Welsh Corgi (Pembroke); numer FCI: 39.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('welsh-corgi-cardigan','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Welsh Corgi (Cardigan); numer FCI: 38.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('doberman','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Dobermann; numer FCI: 143.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('dalmatynczyk','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Dalmatinski Pas (Dalmatian); numer FCI: 153.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('nowofundland','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Newfoundland; numer FCI: 50.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('dog-niemiecki','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Deutsche Dogge (Great Dane); numer FCI: 235.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('chart-afganski','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Afghan Hound; numer FCI: 228.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('whippet','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Whippet; numer FCI: 162.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('bichon-frise','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bichon Frise; numer FCI: 215.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('hawanczyk','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Havanese; numer FCI: 250.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('west-highland-white-terrier','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: West Highland White Terrier; numer FCI: 85.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('boston-terrier','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Boston Terrier; numer FCI: 140.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('shar-pei','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Shar Pei; numer FCI: 309.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('chow-chow','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Chow Chow; numer FCI: 205.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('basenji','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Basenji; numer FCI: 43.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('papillon','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Epagneul Nain Continental, odmiana Papillon; numer FCI: 77.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('pomeranian','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Deutscher Spitz, odmiana Pomeranian; numer FCI: 97.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('owczarek-australijski-kelpie','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Australian Kelpie; numer FCI: 293.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('owczarek-szetlandzki','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Shetland Sheepdog; numer FCI: 88.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('wyzel-weimarski','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Weimaraner; numer FCI: 99.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('vizsla','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Rövidszörü Magyar Vizsla; numer FCI: 57.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('rhodesian-ridgeback','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Rhodesian Ridgeback; numer FCI: 146.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('pies-faraona','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Pharaoh Hound; numer FCI: 248.','https://www.fci.be/en/Nomenclature/','2026-06-23'),
  ('alaskan-malamute','FCI','Fédération Cynologique Internationale',1,'recognized','Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Alaskan Malamute; numer FCI: 243.','https://www.fci.be/en/Nomenclature/','2026-06-23')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
),
batch_slugs(slug) AS (
  SELECT slug FROM batch_recognitions
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT b.id, r.organization_code, r.organization_name, r.recognized, r.recognition_status, r.note, r.source_url, r.verified_at
FROM batch_recognitions r
JOIN breeds b ON b.slug = r.slug
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('australian-shepherd'), ('welsh-corgi-pembroke'), ('welsh-corgi-cardigan'),
  ('doberman'), ('dalmatynczyk'), ('nowofundland'), ('dog-niemiecki'),
  ('chart-afganski'), ('whippet'), ('bichon-frise'), ('hawanczyk'),
  ('west-highland-white-terrier'), ('boston-terrier'), ('shar-pei'), ('chow-chow'),
  ('basenji'), ('papillon'), ('pomeranian'), ('owczarek-australijski-kelpie'),
  ('owczarek-szetlandzki'), ('wyzel-weimarski'), ('vizsla'),
  ('rhodesian-ridgeback'), ('pies-faraona'), ('alaskan-malamute')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT
  b.id,
  o.organization_code,
  o.organization_name,
  0,
  'needs_verification',
  'Status ' || o.organization_code || ' wymaga osobnej weryfikacji w oficjalnym źródle organizacji.',
  NULL,
  NULL
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN orgs o
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;


-- END FCI dog breeds batch 1

-- BEGIN FCI dog breeds batch 2
PRAGMA foreign_keys = ON;

-- FCI dog breeds pipeline: Batch 2 (2026-06-23).
-- Dodaje kolejne 25 ras psów oraz komplet danych wspierających strony ras.

WITH batch_breeds(
  name, slug, fci_name, fci_number, origin_country,
  traits, history_note, fun_fact,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max
) AS (
  VALUES
  ('American Staffordshire Terrier', 'american-staffordshire-terrier', 'American Staffordshire Terrier', '286', 'United States of America', 'mocny, pewny siebie i bardzo zorientowany na człowieka terier', 'American Staffordshire Terrier został rozwinięty jako silny, sprawny terier o dużej odporności psychicznej i fizycznej. Współczesny typ rasy wymaga odpowiedzialnego prowadzenia, dobrej socjalizacji i spokojnej pracy z emocjami.', 'To rasa, która przy dobrym prowadzeniu potrafi być bardzo skupiona na relacji z opiekunem.', 23, 32, 43, 48, 11, 14, 'high', 'low', 'medium', 4, 3, 900, 1400),
  ('Bull Terrier', 'bull-terrier', 'Bull Terrier', '11', 'Great Britain', 'charakterystyczny, energiczny i uparty terier o jajowatej głowie', 'Bull Terrier powstał w Wielkiej Brytanii jako pies o silnym charakterze, zwinności i dużej odporności. Historia rasy tłumaczy, dlaczego potrzebuje jasnych zasad, zajęcia i spokojnego prowadzenia od pierwszych miesięcy.', 'Sylwetka i głowa bull terriera są jednymi z najbardziej rozpoznawalnych w świecie kynologii.', 22, 36, 45, 56, 11, 13, 'high', 'low', 'hard', 3, 3, 950, 1450),
  ('Staffordshire Bull Terrier', 'staffordshire-bull-terrier', 'Staffordshire Bull Terrier', '76', 'Great Britain', 'kompaktowy, silny i towarzyski terier o dużym temperamencie', 'Staffordshire Bull Terrier wywodzi się z brytyjskich terrierów o zwartej budowie i dużej odwadze. Dziś jest przede wszystkim psem rodzinnym, ale jego energia i siła nadal wymagają odpowiedzialnego wychowania.', 'Staffik często łączy sportową budowę z dużą potrzebą kontaktu z ludźmi.', 11, 17, 35, 41, 12, 14, 'high', 'low', 'medium', 4, 4, 600, 950),
  ('Springer spaniel angielski', 'springer-spaniel-angielski', 'English Springer Spaniel', '125', 'Great Britain', 'żywy, wesoły i bardzo pracowity spaniel myśliwski', 'English Springer Spaniel był rozwijany jako pies myśliwski do pracy blisko człowieka, z dużą chęcią ruchu i współpracy. Te korzenie są nadal widoczne w codziennym zachowaniu oraz potrzebie aktywności.', 'Springer spaniel angielski zwykle świetnie odnajduje się w zabawach węchowych i aportowaniu.', 18, 25, 46, 56, 12, 14, 'high', 'medium', 'easy', 5, 3, 850, 1250),
  ('Flat Coated Retriever', 'flat-coated-retriever', 'Flat Coated Retriever', '121', 'Great Britain', 'pogodny, aktywny i elegancki retriever o dłuższej sierści', 'Flat Coated Retriever powstał jako pies aportujący, który miał łączyć wytrzymałość z chęcią współpracy. Współcześnie nadal potrzebuje ruchu, zadań i kontaktu z opiekunem, żeby zachować dobrą równowagę.', 'Flat coated retriever długo zachowuje młodzieńczy temperament i sporo energii.', 25, 36, 56, 62, 10, 13, 'high', 'medium', 'easy', 5, 2, 1100, 1650),
  ('Nova Scotia Duck Tolling Retriever', 'nova-scotia-duck-tolling-retriever', 'Nova Scotia Duck Tolling Retriever', '312', 'Canada', 'energiczny, zwinny i bystry retriever o rudawym umaszczeniu', 'Toller został wyhodowany do pracy przy wodzie i wabienia ptactwa, dlatego łączy ruchliwość z dużą chęcią współpracy. Historia rasy tłumaczy jego potrzebę pracy głową oraz regularnej aktywności.', 'Toller bywa najmniejszym z retrieverów uznanych przez FCI, ale nie ma małych potrzeb ruchowych.', 17, 23, 45, 53, 12, 14, 'high', 'medium', 'medium', 4, 3, 780, 1180),
  ('Bobtail', 'bobtail', 'Old English Sheepdog', '16', 'Great Britain', 'duży, kudłaty i zwykle pogodny pies pasterski', 'Old English Sheepdog rozwijał się jako pies pasterski i stróżujący, łączący siłę z czujnością. Dzisiaj jest częściej psem rodzinnym, ale jego rozmiar i sierść nadal wymagają realnego przygotowania.', 'Bobtail robi ogromne wrażenie wyglądem, ale potrzebuje też dużo pielęgnacji i sensownej rutyny.', 27, 45, 53, 61, 10, 12, 'medium', 'high', 'medium', 4, 2, 1200, 1800),
  ('Collie długowłosy', 'collie-dlugowlosy', 'Collie Rough', '156', 'Great Britain', 'wrażliwy, elegancki i rodzinny pies pasterski o obfitej sierści', 'Collie długowłosy był rozwijany jako pies pasterski reagujący na człowieka i otoczenie z dużą uważnością. Jego historia tłumaczy wrażliwość, potrzebę delikatnego szkolenia i przywiązanie do domu.', 'Długi profil głowy i obfita szata collie są znakiem rozpoznawczym tej rasy.', 18, 30, 51, 61, 12, 14, 'medium', 'high', 'easy', 5, 3, 800, 1250),
  ('Collie krótkowłosy', 'collie-krotkowlosy', 'Collie Smooth', '296', 'Great Britain', 'czujny, delikatny i zwinny pies pasterski o krótszej sierści', 'Collie krótkowłosy zachował pasterskie korzenie, ale w nieco bardziej użytkowej i łatwiejszej pielęgnacyjnie formie niż collie długowłosy. Nadal wymaga spokojnej relacji, pracy i sensownej socjalizacji.', 'Smooth collie bywa rzadszy od odmiany długowłosej, ale ma bardzo podobny temperament rodzinny.', 18, 30, 51, 61, 12, 14, 'medium', 'low', 'easy', 5, 3, 780, 1200),
  ('Australian Cattle Dog', 'australian-cattle-dog', 'Australian Cattle Dog', '287', 'Australia', 'twardy, wytrzymały i bardzo pracowity pies do zadań', 'Australian Cattle Dog powstał do ciężkiej pracy przy stadach w wymagających warunkach, dlatego potrzebuje ruchu, zajęcia i opiekuna rozumiejącego psa użytkowego. Sama energia bez struktury szybko staje się problemem.', 'Ta rasa słynie z ogromnej odporności i gotowości do pracy nawet w trudnym terenie.', 15, 25, 43, 51, 12, 15, 'high', 'low', 'hard', 4, 2, 750, 1200),
  ('Biały owczarek szwajcarski', 'bialy-owczarek-szwajcarski', 'White Swiss Shepherd Dog', '347', 'Switzerland', 'inteligentny, kontaktowy i elegancki pies pasterski o białej sierści', 'Biały owczarek szwajcarski wywodzi się z linii owczarków, w których ceniono równowagę, współpracę i użytkowość. Współcześnie dobrze sprawdza się jako pies rodzinny i sportowy, ale potrzebuje zajęcia oraz prowadzenia bez chaosu.', 'Biała szata wyróżnia rasę wizualnie, ale codzienne potrzeby są ważniejsze niż efektowny wygląd.', 25, 40, 53, 66, 11, 14, 'high', 'medium', 'medium', 5, 3, 1100, 1700),
  ('Chart rosyjski borzoj', 'chart-rosyjski-borzoj', 'Borzoi', '193', 'Russia', 'wysoki, szlachetny i szybki chart o dłuższej sierści', 'Borzoi był rozwijany jako pies myśliwski wykorzystujący wzrok, szybkość i niezależność. Te cechy widać do dziś, dlatego rasa wymaga bezpiecznych spacerów i opiekuna, który szanuje jej samodzielność.', 'Borzoj łączy bardzo elegancki wygląd z realną potrzebą ruchu i przestrzeni.', 25, 48, 68, 85, 10, 13, 'medium', 'medium', 'hard', 3, 2, 1050, 1650),
  ('Charcik włoski', 'charcik-wloski', 'Italian Sighthound', '200', 'Italy', 'mały, delikatny i szybki chart do towarzystwa', 'Charcik włoski ma długą historię jako lekki chart, ceniony za zwinność i elegancję. W domu zwykle szuka ciepła oraz bliskości, ale nadal potrzebuje bezpiecznego ruchu i ostrożnego obchodzenia się.', 'To niewielki chart, który potrafi być zaskakująco szybki mimo delikatnej sylwetki.', 3, 5, 32, 38, 13, 15, 'medium', 'low', 'medium', 4, 5, 200, 360),
  ('Saluki', 'saluki', 'Saluki', '269', 'Middle East', 'lekki, niezależny i bardzo szybki chart pustynny', 'Saluki należy do bardzo starych ras chartów, w których ceniono szybkość, wytrzymałość i niezależne decyzje. Te cechy pozostają ważne także dziś, dlatego opiekun musi zadbać o bezpieczeństwo spacerów i spokojne prowadzenie.', 'Saluki może mieć szatę gładką albo z delikatnymi piórami, ale zawsze zachowuje typową chartą lekkość.', 18, 27, 58, 71, 12, 14, 'high', 'low', 'hard', 3, 3, 700, 1150),
  ('Wilczarz irlandzki', 'wilczarz-irlandzki', 'Irish Wolfhound', '160', 'Ireland', 'bardzo wysoki, łagodny i spokojny chart olbrzymi', 'Irish Wolfhound ma długą historię jako potężny chart polujący i reprezentacyjny. Dziś jest przede wszystkim psem rodzinnym, ale jego wielkość i koszty utrzymania wymagają świadomej decyzji.', 'Wilczarz irlandzki należy do najwyższych ras psów uznanych przez FCI.', 40, 69, 71, 90, 7, 10, 'medium', 'medium', 'medium', 4, 1, 1700, 2800),
  ('Airedale Terrier', 'airedale-terrier', 'Airedale Terrier', '7', 'Great Britain', 'największy z terierów, energiczny i bardzo bystry', 'Airedale Terrier wywodzi się z brytyjskich terierów użytkowych pracujących w różnym terenie i warunkach. To tłumaczy jego samodzielność, inteligencję i potrzebę aktywnego życia z człowiekiem.', 'Airedale bywa nazywany królem terierów ze względu na rozmiar i mocny charakter.', 18, 29, 56, 61, 11, 14, 'high', 'medium', 'medium', 4, 3, 850, 1300),
  ('Cairn Terrier', 'cairn-terrier', 'Cairn Terrier', '4', 'Great Britain', 'mały, dzielny i czujny terier o szorstkiej sierści', 'Cairn Terrier rozwijał się jako niewielki pies użytkowy o dużej odwadze i samodzielności. Współcześnie dobrze sprawdza się jako pies rodzinny, ale nadal potrzebuje zajęcia i pracy nad emocjami.', 'To jedna z klasycznych szkockich ras terierów o bardzo praktycznym, roboczym rodowodzie.', 6, 8, 28, 31, 12, 15, 'medium', 'medium', 'medium', 4, 4, 320, 520),
  ('Fox Terrier szorstkowłosy', 'fox-terrier-szorstkowlosy', 'Wire Fox Terrier', '169', 'Great Britain', 'żywy, pewny siebie i bardzo reaktywny terier', 'Fox Terrier szorstkowłosy był rozwijany jako pies odważny, szybki i zdolny do pracy w trudnym terenie. W codzienności oznacza to potrzebę aktywności, szkolenia i opiekuna, który lubi temperament terierów.', 'Szorstka sierść fox terriera wymaga regularnej pielęgnacji, a nie tylko okazjonalnego czesania.', 7, 9, 36, 40, 12, 15, 'high', 'medium', 'hard', 3, 4, 350, 560),
  ('Norwich Terrier', 'norwich-terrier', 'Norwich Terrier', '72', 'Great Britain', 'mały, energiczny i towarzyski terier o twardej sierści', 'Norwich Terrier należy do brytyjskich małych terierów rozwijanych do czujnej pracy i bliskiego kontaktu z człowiekiem. Dziś jest częściej psem do towarzystwa, ale nadal potrzebuje aktywności i jasnych zasad.', 'Norwich Terrier jest niewielki, ale zwykle ma bardzo zdecydowaną terierową osobowość.', 5, 6, 24, 26, 12, 15, 'medium', 'medium', 'medium', 4, 5, 260, 420),
  ('Scottish Terrier', 'scottish-terrier', 'Scottish Terrier', '73', 'Great Britain', 'niezależny, czujny i elegancki mały terier', 'Scottish Terrier wywodzi się ze szkockich psów użytkowych o dużej odwadze i samodzielności. Historia rasy tłumaczy jej silny charakter, potrzebę granic i mniejszą tolerancję na chaos.', 'Scottie ma charakterystyczny profil głowy, brodę i sylwetkę rozpoznawalną nawet z daleka.', 8, 10, 25, 28, 11, 13, 'medium', 'medium', 'hard', 3, 4, 350, 560),
  ('Shiba inu', 'shiba-inu', 'Shiba', '257', 'Japan', 'mały, czujny i bardzo niezależny pies szpicowaty', 'Shiba inu należy do japońskich ras pierwotnych, w których ceniono samodzielność, zwinność i szybką reakcję. W domu przekłada się to na potrzebę spokojnego prowadzenia, socjalizacji i bezpiecznego zarządzania spacerami.', 'Shiba często sprawia wrażenie bardzo samodzielnego psa, nawet gdy mocno przywiązuje się do domu.', 7, 11, 35, 41, 12, 15, 'medium', 'low', 'hard', 3, 4, 360, 620),
  ('Szpic japoński', 'szpic-japonski', 'Japanese Spitz', '262', 'Japan', 'lekki, biały i towarzyski pies do aktywnego życia rodzinnego', 'Szpic japoński rozwijał się jako nieduży pies do towarzystwa łączący czujność z przyjaznym temperamentem. Dziś dobrze odnajduje się w rodzinie, ale nadal potrzebuje ruchu, uwagi i pielęgnacji białej sierści.', 'Biała szata szpica japońskiego wygląda efektownie, ale wymaga regularnej pielęgnacji.', 5, 10, 30, 38, 12, 14, 'medium', 'medium', 'easy', 4, 5, 300, 520),
  ('Leonberger', 'leonberger', 'Leonberger', '145', 'Germany', 'duży, spokojny i rodzinny pies o lwiego typu sylwetce', 'Leonberger został stworzony jako duży pies o mocnej budowie, stabilnym temperamencie i imponującym wyglądzie. Jego rozmiar oraz sierść oznaczają jednak konkretne koszty, pielęgnację i potrzebę świadomego wychowania.', 'Leonberger łączy rozmiar psa górskiego z bardziej miękkim, rodzinnym usposobieniem.', 40, 75, 65, 80, 8, 10, 'medium', 'high', 'medium', 5, 1, 1700, 2800),
  ('Bernardyn', 'bernardyn', 'Saint Bernard', '61', 'Switzerland', 'bardzo duży, spokojny i rodzinny pies górski', 'Bernardyn jest rasą górską kojarzoną z siłą, spokojem i pracą w trudnych warunkach. Współcześnie częściej trafia do domów rodzinnych, ale nadal wymaga miejsca, budżetu i rozsądnego prowadzenia dużego psa.', 'Bernardyn należy do najbardziej rozpoznawalnych ras molosowatych o górskim rodowodzie.', 54, 82, 65, 90, 8, 10, 'medium', 'high', 'medium', 5, 1, 1900, 3000),
  ('Bullmastiff', 'bullmastiff', 'Bullmastiff', '157', 'Great Britain', 'silny, opanowany i czujny molos rodzinny', 'Bullmastiff został rozwinięty jako duży pies łączący siłę z opanowaniem i gotowością do reagowania. W domu potrzebuje jasnych zasad, socjalizacji i opiekuna, który rozumie odpowiedzialność za dużą rasę.', 'Bullmastiff zwykle nie potrzebuje hałaśliwej aktywności, ale bardzo potrzebuje stabilnego prowadzenia.', 41, 59, 61, 69, 8, 11, 'medium', 'low', 'medium', 4, 2, 1500, 2200)
)
INSERT INTO breeds (
  name, slug, species, short_description, long_description,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max,
  meta_title, meta_description, h1, status
)
SELECT
  name,
  slug,
  'dog',
  name || ' to ' || traits || '.',
  name || ' to rasa dla opiekunów, którzy rozumieją jej codzienne potrzeby. To ' || traits || ', dlatego wymaga ruchu, żywienia i pielęgnacji dopasowanych do wieku, zdrowia oraz trybu życia. Opis Futrio pomaga zaplanować opiekę, ale nie zastępuje rozmowy z hodowcą, behawiorystą ani lekarzem weterynarii.',
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
  name || ' - opis rasy, charakter i koszty | Futrio',
  'Poznaj rasę ' || name || ': charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.',
  name || ' - opis rasy, charakter i koszty utrzymania',
  'published'
FROM batch_breeds
WHERE true
ON CONFLICT(slug) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
),
breed_notes(slug, history_note, fun_fact) AS (
  VALUES
  ('american-staffordshire-terrier', 'American Staffordshire Terrier został rozwinięty jako silny, sprawny terier o dużej odporności psychicznej i fizycznej. Współczesny typ rasy wymaga odpowiedzialnego prowadzenia, dobrej socjalizacji i spokojnej pracy z emocjami.', 'To rasa, która przy dobrym prowadzeniu potrafi być bardzo skupiona na relacji z opiekunem.'),
  ('bull-terrier', 'Bull Terrier powstał w Wielkiej Brytanii jako pies o silnym charakterze, zwinności i dużej odporności. Historia rasy tłumaczy, dlaczego potrzebuje jasnych zasad, zajęcia i spokojnego prowadzenia od pierwszych miesięcy.', 'Sylwetka i głowa bull terriera są jednymi z najbardziej rozpoznawalnych w świecie kynologii.'),
  ('staffordshire-bull-terrier', 'Staffordshire Bull Terrier wywodzi się z brytyjskich terrierów o zwartej budowie i dużej odwadze. Dziś jest przede wszystkim psem rodzinnym, ale jego energia i siła nadal wymagają odpowiedzialnego wychowania.', 'Staffik często łączy sportową budowę z dużą potrzebą kontaktu z ludźmi.'),
  ('springer-spaniel-angielski', 'English Springer Spaniel był rozwijany jako pies myśliwski do pracy blisko człowieka, z dużą chęcią ruchu i współpracy. Te korzenie są nadal widoczne w codziennym zachowaniu oraz potrzebie aktywności.', 'Springer spaniel angielski zwykle świetnie odnajduje się w zabawach węchowych i aportowaniu.'),
  ('flat-coated-retriever', 'Flat Coated Retriever powstał jako pies aportujący, który miał łączyć wytrzymałość z chęcią współpracy. Współcześnie nadal potrzebuje ruchu, zadań i kontaktu z opiekunem, żeby zachować dobrą równowagę.', 'Flat coated retriever długo zachowuje młodzieńczy temperament i sporo energii.'),
  ('nova-scotia-duck-tolling-retriever', 'Toller został wyhodowany do pracy przy wodzie i wabienia ptactwa, dlatego łączy ruchliwość z dużą chęcią współpracy. Historia rasy tłumaczy jego potrzebę pracy głową oraz regularnej aktywności.', 'Toller bywa najmniejszym z retrieverów uznanych przez FCI, ale nie ma małych potrzeb ruchowych.'),
  ('bobtail', 'Old English Sheepdog rozwijał się jako pies pasterski i stróżujący, łączący siłę z czujnością. Dzisiaj jest częściej psem rodzinnym, ale jego rozmiar i sierść nadal wymagają realnego przygotowania.', 'Bobtail robi ogromne wrażenie wyglądem, ale potrzebuje też dużo pielęgnacji i sensownej rutyny.'),
  ('collie-dlugowlosy', 'Collie długowłosy był rozwijany jako pies pasterski reagujący na człowieka i otoczenie z dużą uważnością. Jego historia tłumaczy wrażliwość, potrzebę delikatnego szkolenia i przywiązanie do domu.', 'Długi profil głowy i obfita szata collie są znakiem rozpoznawczym tej rasy.'),
  ('collie-krotkowlosy', 'Collie krótkowłosy zachował pasterskie korzenie, ale w nieco bardziej użytkowej i łatwiejszej pielęgnacyjnie formie niż collie długowłosy. Nadal wymaga spokojnej relacji, pracy i sensownej socjalizacji.', 'Smooth collie bywa rzadszy od odmiany długowłosej, ale ma bardzo podobny temperament rodzinny.'),
  ('australian-cattle-dog', 'Australian Cattle Dog powstał do ciężkiej pracy przy stadach w wymagających warunkach, dlatego potrzebuje ruchu, zajęcia i opiekuna rozumiejącego psa użytkowego. Sama energia bez struktury szybko staje się problemem.', 'Ta rasa słynie z ogromnej odporności i gotowości do pracy nawet w trudnym terenie.'),
  ('bialy-owczarek-szwajcarski', 'Biały owczarek szwajcarski wywodzi się z linii owczarków, w których ceniono równowagę, współpracę i użytkowość. Współcześnie dobrze sprawdza się jako pies rodzinny i sportowy, ale potrzebuje zajęcia oraz prowadzenia bez chaosu.', 'Biała szata wyróżnia rasę wizualnie, ale codzienne potrzeby są ważniejsze niż efektowny wygląd.'),
  ('chart-rosyjski-borzoj', 'Borzoi był rozwijany jako pies myśliwski wykorzystujący wzrok, szybkość i niezależność. Te cechy widać do dziś, dlatego rasa wymaga bezpiecznych spacerów i opiekuna, który szanuje jej samodzielność.', 'Borzoj łączy bardzo elegancki wygląd z realną potrzebą ruchu i przestrzeni.'),
  ('charcik-wloski', 'Charcik włoski ma długą historię jako lekki chart, ceniony za zwinność i elegancję. W domu zwykle szuka ciepła oraz bliskości, ale nadal potrzebuje bezpiecznego ruchu i ostrożnego obchodzenia się.', 'To niewielki chart, który potrafi być zaskakująco szybki mimo delikatnej sylwetki.'),
  ('saluki', 'Saluki należy do bardzo starych ras chartów, w których ceniono szybkość, wytrzymałość i niezależne decyzje. Te cechy pozostają ważne także dziś, dlatego opiekun musi zadbać o bezpieczeństwo spacerów i spokojne prowadzenie.', 'Saluki może mieć szatę gładką albo z delikatnymi piórami, ale zawsze zachowuje typową chartą lekkość.'),
  ('wilczarz-irlandzki', 'Irish Wolfhound ma długą historię jako potężny chart polujący i reprezentacyjny. Dziś jest przede wszystkim psem rodzinnym, ale jego wielkość i koszty utrzymania wymagają świadomej decyzji.', 'Wilczarz irlandzki należy do najwyższych ras psów uznanych przez FCI.'),
  ('airedale-terrier', 'Airedale Terrier wywodzi się z brytyjskich terierów użytkowych pracujących w różnym terenie i warunkach. To tłumaczy jego samodzielność, inteligencję i potrzebę aktywnego życia z człowiekiem.', 'Airedale bywa nazywany królem terierów ze względu na rozmiar i mocny charakter.'),
  ('cairn-terrier', 'Cairn Terrier rozwijał się jako niewielki pies użytkowy o dużej odwadze i samodzielności. Współcześnie dobrze sprawdza się jako pies rodzinny, ale nadal potrzebuje zajęcia i pracy nad emocjami.', 'To jedna z klasycznych szkockich ras terierów o bardzo praktycznym, roboczym rodowodzie.'),
  ('fox-terrier-szorstkowlosy', 'Fox Terrier szorstkowłosy był rozwijany jako pies odważny, szybki i zdolny do pracy w trudnym terenie. W codzienności oznacza to potrzebę aktywności, szkolenia i opiekuna, który lubi temperament terierów.', 'Szorstka sierść fox terriera wymaga regularnej pielęgnacji, a nie tylko okazjonalnego czesania.'),
  ('norwich-terrier', 'Norwich Terrier należy do brytyjskich małych terierów rozwijanych do czujnej pracy i bliskiego kontaktu z człowiekiem. Dziś jest częściej psem do towarzystwa, ale nadal potrzebuje aktywności i jasnych zasad.', 'Norwich Terrier jest niewielki, ale zwykle ma bardzo zdecydowaną terierową osobowość.'),
  ('scottish-terrier', 'Scottish Terrier wywodzi się ze szkockich psów użytkowych o dużej odwadze i samodzielności. Historia rasy tłumaczy jej silny charakter, potrzebę granic i mniejszą tolerancję na chaos.', 'Scottie ma charakterystyczny profil głowy, brodę i sylwetkę rozpoznawalną nawet z daleka.'),
  ('shiba-inu', 'Shiba inu należy do japońskich ras pierwotnych, w których ceniono samodzielność, zwinność i szybką reakcję. W domu przekłada się to na potrzebę spokojnego prowadzenia, socjalizacji i bezpiecznego zarządzania spacerami.', 'Shiba często sprawia wrażenie bardzo samodzielnego psa, nawet gdy mocno przywiązuje się do domu.'),
  ('szpic-japonski', 'Szpic japoński rozwijał się jako nieduży pies do towarzystwa łączący czujność z przyjaznym temperamentem. Dziś dobrze odnajduje się w rodzinie, ale nadal potrzebuje ruchu, uwagi i pielęgnacji białej sierści.', 'Biała szata szpica japońskiego wygląda efektownie, ale wymaga regularnej pielęgnacji.'),
  ('leonberger', 'Leonberger został stworzony jako duży pies o mocnej budowie, stabilnym temperamencie i imponującym wyglądzie. Jego rozmiar oraz sierść oznaczają jednak konkretne koszty, pielęgnację i potrzebę świadomego wychowania.', 'Leonberger łączy rozmiar psa górskiego z bardziej miękkim, rodzinnym usposobieniem.'),
  ('bernardyn', 'Bernardyn jest rasą górską kojarzoną z siłą, spokojem i pracą w trudnych warunkach. Współcześnie częściej trafia do domów rodzinnych, ale nadal wymaga miejsca, budżetu i rozsądnego prowadzenia dużego psa.', 'Bernardyn należy do najbardziej rozpoznawalnych ras molosowatych o górskim rodowodzie.'),
  ('bullmastiff', 'Bullmastiff został rozwinięty jako duży pies łączący siłę z opanowaniem i gotowością do reagowania. W domu potrzebuje jasnych zasad, socjalizacji i opiekuna, który rozumie odpowiedzialność za dużą rasę.', 'Bullmastiff zwykle nie potrzebuje hałaśliwej aktywności, ale bardzo potrzebuje stabilnego prowadzenia.')
),
section_templates(section_key, heading, sort_order, body_template) AS (
  VALUES
  ('history', 'Historia rasy', 5, '{history_note}\n\nHistoria rasy nadal pomaga zrozumieć współczesne potrzeby opiekuńcze, poziom aktywności i sposób prowadzenia. To ważny kontekst przy wyborze psa do konkretnego domu, nie tylko ciekawostka kynologiczna.'),
  ('character', 'Charakter', 10, '{name} ma cechy typowe dla swojej grupy FCI, ale codzienne zachowanie zawsze zależy od konkretnego psa, socjalizacji i sposobu prowadzenia. Opiekun powinien obserwować reakcje na ludzi, inne zwierzęta, samotność i pobudzenie.\n\nNajlepsze efekty daje spokojne, konsekwentne wychowanie oparte na nagradzaniu dobrych zachowań. Rasa nie powinna być wybierana wyłącznie po wyglądzie lub popularności, bo potrzeby dnia codziennego są ważniejsze niż pierwsze wrażenie.'),
  ('for_whom', 'Dla kogo będzie dobrym wyborem', 20, '{name} będzie dobrym wyborem dla osób, które przed decyzją realnie ocenią czas na spacery, pielęgnację, szkolenie i budżet. Warto porozmawiać z odpowiedzialnym hodowcą oraz sprawdzić potrzeby konkretnej linii.\n\nTo rasa dla opiekuna gotowego na rutynę, cierpliwość i dopasowanie wymagań do wieku psa. Jeśli dom nie ma czasu na pracę z psem, lepiej odłożyć decyzję niż liczyć, że sama rasa rozwiąże codzienne wyzwania.'),
  ('home_and_apartment', 'Dom i mieszkanie', 30, '{name} może funkcjonować w domu lub mieszkaniu, jeśli opiekun zapewni przewidywalny plan dnia i miejsce do odpoczynku. Sam metraż nie zastępuje spacerów, kontaktu z człowiekiem ani pracy nad spokojem.\n\nW mieszkaniu szczególnie ważna jest nauka wyciszania po aktywności oraz kontrola szczekania lub pobudzenia. Ogród jest dodatkiem, ale nie powinien być jedyną formą aktywności.'),
  ('children_and_family', 'Dzieci i rodzina', 40, '{name} może odnaleźć się w rodzinie, jeśli kontakty z dziećmi są spokojne i nadzorowane. Dzieci powinny wiedzieć, że pies ma prawo do odpoczynku, jedzenia i odejścia z sytuacji.\n\nDorosły odpowiada za bezpieczeństwo obu stron. Wspólne życie jest łatwiejsze, gdy od początku obowiązują proste zasady: nie budzić psa, nie zabierać mu zabawek i nie prowokować gonitw.'),
  ('activity', 'Aktywność', 50, 'Aktywność rasy {name} powinna łączyć ruch, węszenie, krótkie ćwiczenia i odpoczynek. Nawet spokojniejszy pies potrzebuje jakościowych spacerów, a bardziej energiczny nie powinien być tylko fizycznie nakręcany.\n\nDobry plan dnia obejmuje także pracę głową i naukę wyciszenia. Zbyt mało zajęcia może prowadzić do frustracji, ale nadmiar bodźców bez odpoczynku również pogarsza codzienne zachowanie.'),
  ('grooming', 'Pielęgnacja', 60, 'Pielęgnacja rasy {name} powinna obejmować sierść, pazury, uszy, zęby, łapy i kontrolę skóry. Regularne, krótkie zabiegi są zwykle skuteczniejsze niż rzadkie nadrabianie zaniedbań.\n\nZakres pielęgnacji zależy od typu sierści, aktywności i pory roku. W razie problemów skórnych, kołtunów, bólu przy dotyku lub nawracających stanów zapalnych warto skonsultować się ze specjalistą.'),
  ('feeding', 'Żywienie', 70, 'Żywienie rasy {name} powinno być dopasowane do wieku, masy ciała, aktywności, kastracji i stanu zdrowia. Zakres kalorii na Futrio jest orientacyjny i ma pomagać w planowaniu, a nie zastępować zaleceń lekarza weterynarii.\n\nWarto odmierzać porcje, kontrolować przysmaki i regularnie sprawdzać sylwetkę psa. Nagłe zmiany apetytu, masy ciała lub trawienia powinny być omówione z lekarzem.'),
  ('health', 'Zdrowie', 80, 'Informacje zdrowotne dla rasy {name} mają charakter orientacyjny. Opiekun powinien obserwować masę ciała, chód, skórę, apetyt, oddech i poziom energii, szczególnie po zmianie karmy lub intensywności ruchu.\n\nFutrio nie diagnozuje chorób. Każda kulawizna, duszność, przewlekły świąd, biegunka, nagłe osłabienie albo ból wymagają konsultacji z lekarzem weterynarii.'),
  ('costs', 'Koszty utrzymania', 90, 'Koszty utrzymania rasy {name} obejmują karmę, profilaktykę weterynaryjną, zabezpieczenie przeciw pasożytom, pielęgnację, akcesoria i rezerwę na nagłe leczenie. Wydatki rosną wraz z wielkością psa, wymaganiami sierści i potrzebami zdrowotnymi.\n\nKalkulator kosztów Futrio pomaga oszacować miesięczny budżet, ale wynik jest orientacyjny. Ceny zależą od miasta, jakości produktów, standardu opieki oraz indywidualnych potrzeb zwierzęcia.'),
  ('common_mistakes', 'Częste błędy opiekunów', 100, 'Najczęstszy błąd przy rasie {name} to wybór pod wpływem wyglądu, mody lub krótkiego opisu, bez sprawdzenia codziennych obowiązków. Drugim błędem jest odkładanie wychowania, pielęgnacji i kontroli masy ciała na później.\n\nWarto od początku uczyć spokojnego chodzenia na smyczy, przywołania, odpoczynku i akceptowania podstawowych zabiegów. Dobre nawyki są łatwiejsze niż naprawianie utrwalonych problemów.'),
  ('fun_facts', 'Ciekawostki', 110, '{fun_fact}\n\nCiekawostki o rasie są dobrym punktem wejścia, ale w praktyce o dopasowaniu do domu decydują codzienne potrzeby: aktywność, pielęgnacja, relacja z ludźmi i przewidywalna rutyna.'),
  ('faq', 'FAQ', 120, 'P: Czy {name} nadaje się do mieszkania?\nO: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.\n\nP: Ile aktywności potrzebuje {name}?\nO: Aktywność trzeba dopasować do wieku, zdrowia i temperamentu psa, łącząc ruch z pracą umysłową oraz odpoczynkiem.\n\nP: Ile kosztuje utrzymanie tej rasy?\nO: Koszty zależą od karmy, profilaktyki, pielęgnacji i indywidualnych potrzeb zdrowotnych.')
)
INSERT INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT
  b.id,
  t.section_key,
  t.heading,
  replace(
    replace(
      replace(t.body_template, '{name}', b.name),
      '{history_note}', seed.history_note
    ),
    '{fun_fact}', seed.fun_fact
  ),
  t.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
JOIN breed_notes seed ON seed.slug = bs.slug
CROSS JOIN section_templates t
WHERE true
ON CONFLICT(breed_id, section_key) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
),
faq_templates(question_template, answer_template, sort_order) AS (
  VALUES
  ('Czy {name} nadaje się do mieszkania?', '{name} może odnaleźć się w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Ważniejsze od metrażu są codzienne potrzeby konkretnego psa.', 10),
  ('Ile aktywności potrzebuje {name}?', '{name} potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. W planie dnia powinny znaleźć się spacery, węszenie, nauka i spokojny odpoczynek.', 20),
  ('Czy {name} jest dobrym wyborem dla rodziny z dziećmi?', '{name} może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady spokojnego kontaktu. Dorosły powinien nadzorować zabawę i pilnować odpoczynku psa.', 30),
  ('Jak pielęgnować rasę {name}?', 'Pielęgnacja powinna obejmować sierść, pazury, uszy, zęby i kontrolę skóry. Zakres zabiegów zależy od typu sierści oraz stylu życia psa.', 40),
  ('Ile może kosztować utrzymanie rasy {name}?', 'Koszt zależy od jakości karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulatory Futrio podają wartości orientacyjne.', 50)
)
INSERT INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT
  b.id,
  replace(f.question_template, '{name}', b.name),
  replace(f.answer_template, '{name}', b.name),
  f.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN faq_templates f
WHERE true
ON CONFLICT(breed_id, question) DO NOTHING;

WITH batch_slugs(slug) AS (
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
INSERT INTO calculator_profiles (
  breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier,
  monthly_food_cost_min_pln, monthly_food_cost_max_pln,
  grooming_cost_min_pln, grooming_cost_max_pln,
  vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes
)
SELECT
  b.id,
  CASE b.activity_level WHEN 'high' THEN 1.6 WHEN 'medium' THEN 1.4 ELSE 1.2 END,
  2.0,
  1.2,
  CASE WHEN b.weight_max_kg >= 40 THEN 300 WHEN b.weight_max_kg >= 20 THEN 220 WHEN b.weight_max_kg >= 10 THEN 150 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 40 THEN 680 WHEN b.weight_max_kg >= 20 THEN 500 WHEN b.weight_max_kg >= 10 THEN 330 ELSE 220 END,
  CASE b.grooming_level WHEN 'high' THEN 130 WHEN 'medium' THEN 70 ELSE 40 END,
  CASE b.grooming_level WHEN 'high' THEN 300 WHEN 'medium' THEN 170 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 130 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 90 ELSE 60 END,
  'Profil kalkulatora dla FCI Batch 2. Wartości orientacyjne do późniejszej weryfikacji redakcyjnej.'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE true
ON CONFLICT(breed_id) DO NOTHING;

WITH batch_slugs(slug) AS (
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
INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT
  b.id,
  '/breeds/photos/' || b.slug || '.png',
  b.name || ' - zdjęcie rasy',
  b.name || ' - zdjęcie rasy',
  'ai_generated',
  1,
  10
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM breed_images existing WHERE existing.breed_id = b.id AND existing.is_primary = 1
);

WITH batch_slugs(slug) AS (
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
INSERT INTO affiliate_links (
  breed_id, label, category, url, merchant, network, priority, is_active,
  anchor_text, description, placement, disclosure, button_label
)
SELECT
  b.id,
  'Polecane produkty dla rasy ' || b.name,
  'dry_food',
  'https://example.com/link-afiliacyjny-placeholder',
  'Placeholder',
  'placeholder',
  100,
  1,
  'Sprawdź polecane produkty dla tej rasy',
  'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.',
  'feeding_section',
  'Link może mieć charakter afiliacyjny.',
  'Zobacz polecane produkty'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM affiliate_links al WHERE al.breed_id = b.id AND al.merchant = 'Placeholder'
);

WITH batch_recognitions(slug, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at) AS (
  VALUES
  ('american-staffordshire-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: American Staffordshire Terrier; numer FCI: 286.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('bull-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bull Terrier; numer FCI: 11.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('staffordshire-bull-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Staffordshire Bull Terrier; numer FCI: 76.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('springer-spaniel-angielski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: English Springer Spaniel; numer FCI: 125.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('flat-coated-retriever', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Flat Coated Retriever; numer FCI: 121.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('nova-scotia-duck-tolling-retriever', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Nova Scotia Duck Tolling Retriever; numer FCI: 312.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('bobtail', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Old English Sheepdog; numer FCI: 16.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('collie-dlugowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Collie Rough; numer FCI: 156.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('collie-krotkowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Collie Smooth; numer FCI: 296.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('australian-cattle-dog', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Australian Cattle Dog; numer FCI: 287.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('bialy-owczarek-szwajcarski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: White Swiss Shepherd Dog; numer FCI: 347.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('chart-rosyjski-borzoj', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Borzoi; numer FCI: 193.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('charcik-wloski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Italian Sighthound; numer FCI: 200.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('saluki', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Saluki; numer FCI: 269.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('wilczarz-irlandzki', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Irish Wolfhound; numer FCI: 160.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('airedale-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Airedale Terrier; numer FCI: 7.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('cairn-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Cairn Terrier; numer FCI: 4.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('fox-terrier-szorstkowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Wire Fox Terrier; numer FCI: 169.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('norwich-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Norwich Terrier; numer FCI: 72.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('scottish-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Scottish Terrier; numer FCI: 73.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('shiba-inu', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Shiba; numer FCI: 257.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('szpic-japonski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Japanese Spitz; numer FCI: 262.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('leonberger', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Leonberger; numer FCI: 145.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('bernardyn', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Saint Bernard; numer FCI: 61.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23'),
  ('bullmastiff', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bullmastiff; numer FCI: 157.', 'https://www.fci.be/en/Nomenclature/', '2026-06-23')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT b.id, r.organization_code, r.organization_name, r.recognized, r.recognition_status, r.note, r.source_url, r.verified_at
FROM batch_recognitions r
JOIN breeds b ON b.slug = r.slug
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('american-staffordshire-terrier'), ('bull-terrier'), ('staffordshire-bull-terrier'),
  ('springer-spaniel-angielski'), ('flat-coated-retriever'), ('nova-scotia-duck-tolling-retriever'),
  ('bobtail'), ('collie-dlugowlosy'), ('collie-krotkowlosy'),
  ('australian-cattle-dog'), ('bialy-owczarek-szwajcarski'),
  ('chart-rosyjski-borzoj'), ('charcik-wloski'), ('saluki'), ('wilczarz-irlandzki'),
  ('airedale-terrier'), ('cairn-terrier'), ('fox-terrier-szorstkowlosy'),
  ('norwich-terrier'), ('scottish-terrier'), ('shiba-inu'),
  ('szpic-japonski'), ('leonberger'), ('bernardyn'), ('bullmastiff')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT
  b.id,
  o.organization_code,
  o.organization_name,
  0,
  'needs_verification',
  'Status ' || o.organization_code || ' wymaga osobnej weryfikacji w oficjalnym źródle organizacji.',
  NULL,
  NULL
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN orgs o
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;

-- END FCI dog breeds batch 2


-- BEGIN FCI dog breeds batch 3
PRAGMA foreign_keys = ON;

-- FCI dog breeds pipeline: Batch 3 (2026-06-24).
-- Dodaje kolejne 25 ras psów oraz komplet danych wspierających strony ras.

WITH batch_breeds(
  name, slug, fci_name, fci_number, origin_country,
  traits, history_note, fun_fact,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max
) AS (
  VALUES
  ('Basset Hound', 'basset-hound', 'Basset Hound', '163', 'Great Britain', 'spokojny, uparty i doskonaly pies gonczy o poteznym nosie', 'Basset Hound rozwijal sie jako pies gonczy pracujacy nosem przy wolniejszym tempie pracy i bliskim kontakcie z mysliwym. Jego budowa, glos oraz wytrwalosc nadal przypominaja, ze to rasa stworzona do tropienia, a nie tylko do spokojnego zycia na kanapie.', 'Basset Hound ma jeden z najlepiej rozwinietych wechow wsrod ras rodzinnych rozpoznawalnych na co dzien.', 20, 29, 33, 38, 10, 12, 'medium', 'low', 'medium', 4, 4, 700, 1050),
  ('Bloodhound', 'bloodhound', 'Bloodhound', '84', 'Belgium', 'bardzo wytrwaly, lagodny i imponujacy pies tropiacy o wybitnym wechu', 'Bloodhound od wiekow byl ceniony jako pies tropiacy zdolny pracowac na bardzo starym sladzie. Historia rasy dobrze tlumaczy jego niezaleznosc w pracy, ogromna koncentracje na zapachu i potrzebe sensownej aktywnosci opartej na wechu.', 'Bloodhound bywa uznawany za jedna z najlepszych ras tropiacych na swiecie.', 36, 50, 58, 72, 8, 10, 'medium', 'low', 'hard', 4, 2, 1300, 1900),
  ('Petit Basset Griffon Vendeen', 'petit-basset-griffon-vendeen', 'Petit Basset Griffon Vendéen', '67', 'France', 'wesoly, glosny i zywiolowy pies gonczy o szorstkiej siersci', 'Petit Basset Griffon Vendeen rozwijal sie jako maly pies gonczy pracujacy w terenie zarośniętym i trudnym dla wiekszych ras. Do dzis laczy odwage, temperament i duza potrzebe zajecia, dlatego nuda szybko odbija sie na codziennym zachowaniu.', 'PBGV laczy niewielki wzrost z bardzo duza determinacja i glosna praca w terenie.', 11, 18, 34, 38, 12, 14, 'high', 'medium', 'medium', 4, 3, 550, 850),
  ('Gonczy polski', 'gonczy-polski', 'Polish Hunting Dog', '354', 'Poland', 'zrownowazony, wytrzymaly i chetny do pracy pies gonczy z polskim rodowodem', 'Gonczy polski byl odtwarzany i rozwijany jako pies mysliwski zdolny do pracy w roznych warunkach terenowych. Rasa laczy przywiazanie do czlowieka z duza samodzielnoscia w terenie, wiec potrzebuje sensownej aktywnosci i spokojnego prowadzenia.', 'To jedna z ras szczegolnie waznych dla wspolczesnej polskiej kynologii.', 20, 32, 50, 59, 12, 14, 'high', 'low', 'medium', 4, 3, 850, 1300),
  ('Bearded Collie', 'bearded-collie', 'Bearded Collie', '271', 'Great Britain', 'pogodny, ruchliwy i kudlaty pies pasterski mocno nastawiony na relacje', 'Bearded Collie rozwijal sie jako zywy pies pasterski pracujacy blisko stada i czlowieka. Historia rasy tlumaczy jego ruchliwosc, towarzyskosc oraz to, ze najlepiej czuje sie tam, gdzie ma zadania i kontakt z domownikami.', 'Bearded Collie potrafi laczyc bardzo wesole usposobienie z imponujaca wytrzymaloscia w ruchu.', 18, 28, 51, 56, 12, 14, 'high', 'high', 'medium', 5, 3, 850, 1300),
  ('Beauceron', 'beauceron', 'Beauceron', '44', 'France', 'silny, czujny i bardzo uzytkowy pies pasterski o mocnym charakterze', 'Beauceron byl rozwijany jako wszechstronny pies pasterski i strozujacy, zdolny do samodzielnej pracy. Dzis nadal potrzebuje opiekuna, ktory lubi szkolenie, strukture i odpowiedzialna prace z duzym psem.', 'Beauceron czesto zwraca uwage charakterystycznymi dodatkowymi pazurami na tylnych konczynach.', 30, 45, 61, 70, 10, 12, 'high', 'low', 'hard', 4, 2, 1300, 1850),
  ('Briard', 'briard', 'Briard', '113', 'France', 'duzy, wrazliwy i bardzo zaangazowany pies pasterski o obfitej siersci', 'Briard laczyl w pracy funkcje pasterskie i strozujace, dlatego potrzebuje relacji, zajecia i spokojnego przewodnika. Wspolczesny briard czesto mocno przywiazuje sie do domu, ale jego temperament nadal wymaga dobrego prowadzenia.', 'Briard laczy efektowna szate z duza sprawnoscia i checia pracy z czlowiekiem.', 25, 40, 56, 68, 10, 12, 'high', 'high', 'medium', 5, 2, 1100, 1700),
  ('Bouvier des Flandres', 'bouvier-des-flandres', 'Bouvier des Flandres', '191', 'Belgium/France', 'mocny, opanowany i solidny pies pracujacy o szorstkiej szacie', 'Bouvier des Flandres rozwijal sie jako wszechstronny pies gospodarski, wykorzystywany do pilnowania i pracy przy zwierzetach. Historia rasy wyjasnia jego spokojna pewnosc siebie, sile i potrzebe stabilnego prowadzenia.', 'Bouvier des Flandres wyglada masywnie, ale dobrze prowadzony potrafi byc bardzo sprawny i zwinny.', 27, 40, 59, 68, 10, 12, 'medium', 'high', 'medium', 4, 2, 1100, 1700),
  ('Schipperke', 'schipperke', 'Schipperke', '83', 'Belgium', 'maly, czujny i bardzo energiczny pies o duzej osobowosci', 'Schipperke rozwijal sie jako niewielki pies czuwajacy i towarzysz pracujacy przy gospodarstwach oraz lodziach. To tlumaczy jego czujnosc, temperament i potrzebe codziennego zajecia mimo niewielkich rozmiarow.', 'Schipperke bywa niewielki, ale temperamentem potrafi przypominac duzo wiekszego psa struzujacego.', 5, 9, 25, 33, 13, 15, 'medium', 'medium', 'medium', 4, 4, 280, 480),
  ('Eurasier', 'eurasier', 'Eurasier', '291', 'Germany', 'spokojny, rodzinny i zrownowazony pies szpicowaty o miekkim kontakcie z domem', 'Eurasier to stosunkowo mloda rasa rozwijana z mysla o polaczeniu rodzinnego charakteru z typem psa szpicowatego. W praktyce zwykle najlepiej czuje sie w spokojnym domu, gdzie ma przewidywalna rutyna i bliski kontakt z ludzmi.', 'Eurasier czesto zachowuje pewna powsciagliwosc wobec obcych przy duzym przywiazaniu do swojego domu.', 18, 32, 48, 60, 12, 14, 'medium', 'medium', 'medium', 5, 3, 780, 1250),
  ('Akita amerykańska', 'akita-amerykanska', 'American Akita', '344', 'United States of America', 'duzy, dumny i niezalezny pies o mocnej sylwetce oraz silnym instynkcie strazniczym', 'American Akita rozwijala sie jako duzy pies o mocnej budowie, odwaznym charakterze i duzej samodzielnosci. Wspolczesnie wymaga odpowiedzialnego opiekuna, ktory rozumie znaczenie socjalizacji, kontroli emocji i bezpiecznego zarzadzania otoczeniem.', 'Akita amerykańska potrafi laczyc spokoj w domu z bardzo zdecydowana postawa w nowych sytuacjach.', 32, 59, 61, 71, 10, 13, 'medium', 'medium', 'hard', 3, 2, 1300, 2200),
  ('Szpic fiński', 'szpic-finski', 'Finnish Spitz', '49', 'Finland', 'lekki, zywy i bardzo czujny pies mysliwski o lisiej sylwetce', 'Szpic fiński byl rozwijany jako pies mysliwski pracujacy glownie glosem i czujnoscia. Do dzis bywa ruchliwy, reaktywny na bodzce i potrzebuje opiekuna, ktory polubi aktywne zycie z psem szpicowatym.', 'Rasa jest znana z bardzo wyraznej wokalizacji i czujnosci na ruch w otoczeniu.', 10, 14, 39, 50, 12, 14, 'high', 'medium', 'medium', 4, 4, 480, 780),
  ('Fiński lapphund', 'finski-lapphund', 'Finnish Lapphund', '189', 'Finland', 'towarzyski, odporny i rodzinny pies polnocny o gestej siersci', 'Fiński lapphund wywodzi sie z psow pracujacych przy reniferach w trudnych warunkach klimatycznych. Dzis czesto jest psem rodzinnym, ale jego pochodzenie nadal widac w odpornosci, czujnosci i potrzebie sensownego ruchu.', 'Mimo polnocnego rodowodu finski lapphund czesto bardzo dobrze laczy aktywnosc z lagodnym charakterem domowym.', 15, 24, 41, 52, 12, 14, 'medium', 'medium', 'easy', 5, 3, 650, 1050),
  ('Lagotto Romagnolo', 'lagotto-romagnolo', 'Lagotto Romagnolo', '298', 'Italy', 'inteligentny, wesoly i chetny do pracy pies o kreconej siersci', 'Lagotto Romagnolo wywodzi sie z wloskich psow pracujacych przy wodzie, a pozniej takze przy wyszukiwaniu trufli. Historia rasy dobrze tlumaczy jego chec wspolpracy, nosa do pracy oraz potrzebe zajecia glowa.', 'Lagotto jest szeroko kojarzony z poszukiwaniem trufli i praca nosem.', 11, 16, 41, 48, 13, 15, 'medium', 'high', 'easy', 5, 4, 500, 820),
  ('Portugalski pies wodny', 'portugalski-pies-wodny', 'Portuguese Water Dog', '37', 'Portugal', 'energiczny, bystry i bardzo chetny do wspolpracy pies pracujacy przy wodzie', 'Portugalski pies wodny byl rozwijany do pracy przy lodziach i w srodowisku wodnym, gdzie liczyla sie wytrzymalosc oraz kontakt z czlowiekiem. Dzis nadal potrzebuje ruchu, szkolenia i rozsadnego zajecia, a nie tylko ozdobnej roli.', 'To rasa silnie kojarzona z praca w wodzie, aportowaniem i aktywnym stylem zycia.', 16, 27, 43, 57, 11, 13, 'high', 'high', 'medium', 5, 3, 720, 1200),
  ('Seter irlandzki', 'seter-irlandzki', 'Irish Red Setter', '120', 'Ireland', 'elegancki, bardzo ruchliwy i pogodny pies mysliwski do aktywnego domu', 'Seter irlandzki byl rozwijany jako pies polowy o szybkim ruchu i duzej pasji pracy z nosem oraz wzrokiem. W codziennym zyciu potrzebuje ruchu, nauki i opiekuna, ktory nie oczekuje od niego stalego spokoju bez przygotowania.', 'Seter irlandzki zwraca uwage efektowna czerwona szata i lekkim stylem ruchu.', 24, 32, 55, 67, 11, 13, 'high', 'medium', 'easy', 5, 2, 1000, 1500),
  ('Seter angielski', 'seter-angielski', 'English Setter', '2', 'Great Britain', 'lagodny, elegancki i bardzo ruchliwy pies mysliwski o miekkiej szacie', 'Seter angielski rozwijal sie jako pies polowy pracujacy szeroko i chetnie we wspolpracy z przewodnikiem. W domu zwykle jest lagodny, ale nadal potrzebuje duzej dawki ruchu i zajecia odpowiadajacego jego rodowodowi.', 'Seter angielski jest ceniony za plynny ruch i charakterystyczne nakrapianie siersci.', 24, 32, 61, 68, 11, 13, 'high', 'medium', 'easy', 5, 2, 1000, 1500),
  ('Seter szkocki gordon', 'seter-szkocki-gordon', 'Gordon Setter', '6', 'Great Britain', 'mocny, wierny i pracowity seter o ciemnej eleganckiej szacie', 'Gordon Setter byl rozwijany jako wytrzymaly pies mysliwski zdolny do pracy w trudniejszych warunkach i terenie. Ta historia tlumaczy jego wytrzymalosc, potrzebe ruchu i nieco bardziej powazny charakter niz u niektorych innych seterow.', 'Czarno-podpalane umaszczenie gordona jest jednym z najbardziej rozpoznawalnych wsrod seterow.', 25, 36, 58, 66, 10, 12, 'high', 'medium', 'medium', 4, 2, 1050, 1600),
  ('Pointer', 'pointer', 'Pointer', '1', 'Great Britain', 'szybki, atletyczny i bardzo czuly na wspolprace pies mysliwski', 'Pointer od dawna byl rozwijany jako pies polowy o duzej szybkosci, pasji i eleganckim stylu pracy. W praktyce oznacza to potrzebe ruchu, szkolenia i opiekuna, ktory rozumie psa o sportowym temperamencie.', 'Postawa pointera przy wystawieniu zwierzyny jest jedna z najbardziej ikonicznych sylwetek w kynologii uzytkowej.', 20, 34, 55, 69, 12, 14, 'high', 'low', 'easy', 5, 2, 900, 1500),
  ('Coton de Tuléar', 'coton-de-tulear', 'Coton de Tuléar', '283', 'Madagascar', 'maly, wesoly i bardzo kontaktowy pies do bliskiego zycia rodzinnego', 'Coton de Tuléar byl rozwijany jako pies do towarzystwa ceniony za lagodny charakter i przywiazanie do ludzi. Wspolczesnie dobrze odnajduje sie w mieszkaniu, ale nadal potrzebuje relacji, pielegnacji oraz codziennej uwagi.', 'Nazwa rasy nawiazuje do bawelnianej w dotyku siersci, z ktorej coton jest szczegolnie znany.', 4, 7, 23, 28, 14, 16, 'medium', 'medium', 'easy', 5, 5, 220, 420),
  ('Lhasa Apso', 'lhasa-apso', 'Lhasa Apso', '227', 'Tibet', 'niewielki, pewny siebie i czujny pies o dlugiej szacie', 'Lhasa Apso ma korzenie jako pies czuwajacy i do towarzystwa w kulturze tybetanskiej. Dzis czesto mieszka w domach i mieszkaniach, ale nadal zachowuje niezaleznosc, czujnosc i potrzebe spokojnego szacunku dla swoich granic.', 'Mimo malego wzrostu lhasa apso czesto sprawia wrazenie psa bardzo pewnego swojej roli w domu.', 5, 8, 25, 28, 12, 15, 'low', 'high', 'medium', 4, 5, 240, 420),
  ('Pekińczyk', 'pekinczyk', 'Pekingese', '207', 'China', 'niewielki, dumny i spokojny pies do towarzystwa o charakterystycznej sylwetce', 'Pekińczyk byl przez wieki kojarzony z psem dworskim i do towarzystwa, cenionym za wyglad oraz niezalezny charakter. W codziennym zyciu potrzebuje spokojnego domu, uwaznej pielegnacji i opiekuna, ktory szanuje jego komfort oraz ograniczenia zdrowotne.', 'Pekińczyk ma bardzo charakterystyczny, niemal lwi wyraz glowy rozpoznawalny od razu.', 3, 6, 15, 23, 12, 14, 'low', 'high', 'medium', 3, 5, 180, 340),
  ('Mops', 'mops', 'Pug', '253', 'China', 'towarzyski, pogodny i bardzo skupiony na ludziach pies do bliskiego zycia domowego', 'Mops od dawna rozwijal sie jako pies do towarzystwa ceniony za bliskosc z czlowiekiem i kompaktowy rozmiar. Wspolczesnie nadal mocno szuka kontaktu z domownikami, ale wymaga tez rozwaznej kontroli masy ciala, temperatury i oddechu.', 'Mopsy czesto szybko staja sie centrum domowego zycia, bo bardzo lubia byc blisko ludzi.', 6, 8, 25, 33, 12, 15, 'low', 'low', 'medium', 5, 5, 260, 430),
  ('Cocker spaniel amerykański', 'cocker-spaniel-amerykanski', 'American Cocker Spaniel', '167', 'United States of America', 'wesoly, kontaktowy i elegancki spaniel o obfitej szacie', 'Cocker spaniel amerykański byl rozwijany jako mniejszy spaniel mysliwski, a z czasem stal sie takze popularnym psem rodzinnym. Wspolczesnie wymaga pielegnacji, lagodnego szkolenia i ruchu dostosowanego do wieku oraz zdrowia.', 'To jedna z ras spanieli najmocniej kojarzonych z obfita ozdobna szata i wyrazista glowa.', 10, 15, 34, 39, 12, 14, 'medium', 'high', 'easy', 5, 4, 420, 720),
  ('Springer spaniel walijski', 'springer-spaniel-walijski', 'Welsh Springer Spaniel', '126', 'Great Britain', 'aktywny, pogodny i bardzo chetny do wspolpracy spaniel mysliwski', 'Welsh Springer Spaniel rozwijal sie jako pies mysliwski do pracy z czlowiekiem, szczegolnie w polu i trudniejszym terenie. Dzis nadal najlepiej czuje sie przy aktywnym opiekunie, ktory zapewnia ruch, zajecie i spokojne szkolenie.', 'Springer spaniel walijski laczy bardziej klasyczny czerwono-bialy wyglad z duza gotowoscia do pracy nosem.', 16, 25, 43, 48, 12, 14, 'high', 'medium', 'easy', 5, 3, 720, 1150)
)
INSERT INTO breeds (
  name, slug, species, short_description, long_description,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max,
  meta_title, meta_description, h1, status
)
SELECT
  name,
  slug,
  'dog',
  name || ' to ' || traits || '.',
  name || ' to rasa dla opiekunów, którzy rozumieją jej codzienne potrzeby. To ' || traits || ', dlatego wymaga ruchu, żywienia i pielęgnacji dopasowanych do wieku, zdrowia oraz trybu życia. Opis Futrio pomaga zaplanować opiekę, ale nie zastępuje rozmowy z hodowcą, behawiorystą ani lekarzem weterynarii.',
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
  name || ' - opis rasy, charakter i koszty | Futrio',
  'Poznaj rasę ' || name || ': charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.',
  name || ' - opis rasy, charakter i koszty utrzymania',
  'published'
FROM batch_breeds
WHERE true
ON CONFLICT(slug) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('basset-hound'),
  ('bloodhound'),
  ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'),
  ('bearded-collie'),
  ('beauceron'),
  ('briard'),
  ('bouvier-des-flandres'),
  ('schipperke'),
  ('eurasier'),
  ('akita-amerykanska'),
  ('szpic-finski'),
  ('finski-lapphund'),
  ('lagotto-romagnolo'),
  ('portugalski-pies-wodny'),
  ('seter-irlandzki'),
  ('seter-angielski'),
  ('seter-szkocki-gordon'),
  ('pointer'),
  ('coton-de-tulear'),
  ('lhasa-apso'),
  ('pekinczyk'),
  ('mops'),
  ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
),
breed_notes(slug, history_note, fun_fact) AS (
  VALUES
  ('basset-hound', 'Basset Hound rozwijal sie jako pies gonczy pracujacy nosem przy wolniejszym tempie pracy i bliskim kontakcie z mysliwym. Jego budowa, glos oraz wytrwalosc nadal przypominaja, ze to rasa stworzona do tropienia, a nie tylko do spokojnego zycia na kanapie.', 'Basset Hound ma jeden z najlepiej rozwinietych wechow wsrod ras rodzinnych rozpoznawalnych na co dzien.'),
  ('bloodhound', 'Bloodhound od wiekow byl ceniony jako pies tropiacy zdolny pracowac na bardzo starym sladzie. Historia rasy dobrze tlumaczy jego niezaleznosc w pracy, ogromna koncentracje na zapachu i potrzebe sensownej aktywnosci opartej na wechu.', 'Bloodhound bywa uznawany za jedna z najlepszych ras tropiacych na swiecie.'),
  ('petit-basset-griffon-vendeen', 'Petit Basset Griffon Vendeen rozwijal sie jako maly pies gonczy pracujacy w terenie zarośniętym i trudnym dla wiekszych ras. Do dzis laczy odwage, temperament i duza potrzebe zajecia, dlatego nuda szybko odbija sie na codziennym zachowaniu.', 'PBGV laczy niewielki wzrost z bardzo duza determinacja i glosna praca w terenie.'),
  ('gonczy-polski', 'Gonczy polski byl odtwarzany i rozwijany jako pies mysliwski zdolny do pracy w roznych warunkach terenowych. Rasa laczy przywiazanie do czlowieka z duza samodzielnoscia w terenie, wiec potrzebuje sensownej aktywnosci i spokojnego prowadzenia.', 'To jedna z ras szczegolnie waznych dla wspolczesnej polskiej kynologii.'),
  ('bearded-collie', 'Bearded Collie rozwijal sie jako zywy pies pasterski pracujacy blisko stada i czlowieka. Historia rasy tlumaczy jego ruchliwosc, towarzyskosc oraz to, ze najlepiej czuje sie tam, gdzie ma zadania i kontakt z domownikami.', 'Bearded Collie potrafi laczyc bardzo wesole usposobienie z imponujaca wytrzymaloscia w ruchu.'),
  ('beauceron', 'Beauceron byl rozwijany jako wszechstronny pies pasterski i strozujacy, zdolny do samodzielnej pracy. Dzis nadal potrzebuje opiekuna, ktory lubi szkolenie, strukture i odpowiedzialna prace z duzym psem.', 'Beauceron czesto zwraca uwage charakterystycznymi dodatkowymi pazurami na tylnych konczynach.'),
  ('briard', 'Briard laczyl w pracy funkcje pasterskie i strozujace, dlatego potrzebuje relacji, zajecia i spokojnego przewodnika. Wspolczesny briard czesto mocno przywiazuje sie do domu, ale jego temperament nadal wymaga dobrego prowadzenia.', 'Briard laczy efektowna szate z duza sprawnoscia i checia pracy z czlowiekiem.'),
  ('bouvier-des-flandres', 'Bouvier des Flandres rozwijal sie jako wszechstronny pies gospodarski, wykorzystywany do pilnowania i pracy przy zwierzetach. Historia rasy wyjasnia jego spokojna pewnosc siebie, sile i potrzebe stabilnego prowadzenia.', 'Bouvier des Flandres wyglada masywnie, ale dobrze prowadzony potrafi byc bardzo sprawny i zwinny.'),
  ('schipperke', 'Schipperke rozwijal sie jako niewielki pies czuwajacy i towarzysz pracujacy przy gospodarstwach oraz lodziach. To tlumaczy jego czujnosc, temperament i potrzebe codziennego zajecia mimo niewielkich rozmiarow.', 'Schipperke bywa niewielki, ale temperamentem potrafi przypominac duzo wiekszego psa struzujacego.'),
  ('eurasier', 'Eurasier to stosunkowo mloda rasa rozwijana z mysla o polaczeniu rodzinnego charakteru z typem psa szpicowatego. W praktyce zwykle najlepiej czuje sie w spokojnym domu, gdzie ma przewidywalna rutyna i bliski kontakt z ludzmi.', 'Eurasier czesto zachowuje pewna powsciagliwosc wobec obcych przy duzym przywiazaniu do swojego domu.'),
  ('akita-amerykanska', 'American Akita rozwijala sie jako duzy pies o mocnej budowie, odwaznym charakterze i duzej samodzielnosci. Wspolczesnie wymaga odpowiedzialnego opiekuna, ktory rozumie znaczenie socjalizacji, kontroli emocji i bezpiecznego zarzadzania otoczeniem.', 'Akita amerykańska potrafi laczyc spokoj w domu z bardzo zdecydowana postawa w nowych sytuacjach.'),
  ('szpic-finski', 'Szpic fiński byl rozwijany jako pies mysliwski pracujacy glownie glosem i czujnoscia. Do dzis bywa ruchliwy, reaktywny na bodzce i potrzebuje opiekuna, ktory polubi aktywne zycie z psem szpicowatym.', 'Rasa jest znana z bardzo wyraznej wokalizacji i czujnosci na ruch w otoczeniu.'),
  ('finski-lapphund', 'Fiński lapphund wywodzi sie z psow pracujacych przy reniferach w trudnych warunkach klimatycznych. Dzis czesto jest psem rodzinnym, ale jego pochodzenie nadal widac w odpornosci, czujnosci i potrzebie sensownego ruchu.', 'Mimo polnocnego rodowodu finski lapphund czesto bardzo dobrze laczy aktywnosc z lagodnym charakterem domowym.'),
  ('lagotto-romagnolo', 'Lagotto Romagnolo wywodzi sie z wloskich psow pracujacych przy wodzie, a pozniej takze przy wyszukiwaniu trufli. Historia rasy dobrze tlumaczy jego chec wspolpracy, nosa do pracy oraz potrzebe zajecia glowa.', 'Lagotto jest szeroko kojarzony z poszukiwaniem trufli i praca nosem.'),
  ('portugalski-pies-wodny', 'Portugalski pies wodny byl rozwijany do pracy przy lodziach i w srodowisku wodnym, gdzie liczyla sie wytrzymalosc oraz kontakt z czlowiekiem. Dzis nadal potrzebuje ruchu, szkolenia i rozsadnego zajecia, a nie tylko ozdobnej roli.', 'To rasa silnie kojarzona z praca w wodzie, aportowaniem i aktywnym stylem zycia.'),
  ('seter-irlandzki', 'Seter irlandzki byl rozwijany jako pies polowy o szybkim ruchu i duzej pasji pracy z nosem oraz wzrokiem. W codziennym zyciu potrzebuje ruchu, nauki i opiekuna, ktory nie oczekuje od niego stalego spokoju bez przygotowania.', 'Seter irlandzki zwraca uwage efektowna czerwona szata i lekkim stylem ruchu.'),
  ('seter-angielski', 'Seter angielski rozwijal sie jako pies polowy pracujacy szeroko i chetnie we wspolpracy z przewodnikiem. W domu zwykle jest lagodny, ale nadal potrzebuje duzej dawki ruchu i zajecia odpowiadajacego jego rodowodowi.', 'Seter angielski jest ceniony za plynny ruch i charakterystyczne nakrapianie siersci.'),
  ('seter-szkocki-gordon', 'Gordon Setter byl rozwijany jako wytrzymaly pies mysliwski zdolny do pracy w trudniejszych warunkach i terenie. Ta historia tlumaczy jego wytrzymalosc, potrzebe ruchu i nieco bardziej powazny charakter niz u niektorych innych seterow.', 'Czarno-podpalane umaszczenie gordona jest jednym z najbardziej rozpoznawalnych wsrod seterow.'),
  ('pointer', 'Pointer od dawna byl rozwijany jako pies polowy o duzej szybkosci, pasji i eleganckim stylu pracy. W praktyce oznacza to potrzebe ruchu, szkolenia i opiekuna, ktory rozumie psa o sportowym temperamencie.', 'Postawa pointera przy wystawieniu zwierzyny jest jedna z najbardziej ikonicznych sylwetek w kynologii uzytkowej.'),
  ('coton-de-tulear', 'Coton de Tuléar byl rozwijany jako pies do towarzystwa ceniony za lagodny charakter i przywiazanie do ludzi. Wspolczesnie dobrze odnajduje sie w mieszkaniu, ale nadal potrzebuje relacji, pielegnacji oraz codziennej uwagi.', 'Nazwa rasy nawiazuje do bawelnianej w dotyku siersci, z ktorej coton jest szczegolnie znany.'),
  ('lhasa-apso', 'Lhasa Apso ma korzenie jako pies czuwajacy i do towarzystwa w kulturze tybetanskiej. Dzis czesto mieszka w domach i mieszkaniach, ale nadal zachowuje niezaleznosc, czujnosc i potrzebe spokojnego szacunku dla swoich granic.', 'Mimo malego wzrostu lhasa apso czesto sprawia wrazenie psa bardzo pewnego swojej roli w domu.'),
  ('pekinczyk', 'Pekińczyk byl przez wieki kojarzony z psem dworskim i do towarzystwa, cenionym za wyglad oraz niezalezny charakter. W codziennym zyciu potrzebuje spokojnego domu, uwaznej pielegnacji i opiekuna, ktory szanuje jego komfort oraz ograniczenia zdrowotne.', 'Pekińczyk ma bardzo charakterystyczny, niemal lwi wyraz glowy rozpoznawalny od razu.'),
  ('mops', 'Mops od dawna rozwijal sie jako pies do towarzystwa ceniony za bliskosc z czlowiekiem i kompaktowy rozmiar. Wspolczesnie nadal mocno szuka kontaktu z domownikami, ale wymaga tez rozwaznej kontroli masy ciala, temperatury i oddechu.', 'Mopsy czesto szybko staja sie centrum domowego zycia, bo bardzo lubia byc blisko ludzi.'),
  ('cocker-spaniel-amerykanski', 'Cocker spaniel amerykański byl rozwijany jako mniejszy spaniel mysliwski, a z czasem stal sie takze popularnym psem rodzinnym. Wspolczesnie wymaga pielegnacji, lagodnego szkolenia i ruchu dostosowanego do wieku oraz zdrowia.', 'To jedna z ras spanieli najmocniej kojarzonych z obfita ozdobna szata i wyrazista glowa.'),
  ('springer-spaniel-walijski', 'Welsh Springer Spaniel rozwijal sie jako pies mysliwski do pracy z czlowiekiem, szczegolnie w polu i trudniejszym terenie. Dzis nadal najlepiej czuje sie przy aktywnym opiekunie, ktory zapewnia ruch, zajecie i spokojne szkolenie.', 'Springer spaniel walijski laczy bardziej klasyczny czerwono-bialy wyglad z duza gotowoscia do pracy nosem.')
),
section_templates(section_key, heading, sort_order, body_template) AS (
  VALUES
  ('history', 'Historia rasy', 5, '{history_note}\n\nHistoria rasy nadal pomaga zrozumieć współczesne potrzeby opiekuńcze, poziom aktywności i sposób prowadzenia. To ważny kontekst przy wyborze psa do konkretnego domu, nie tylko ciekawostka kynologiczna.'),
  ('character', 'Charakter', 10, '{name} ma cechy typowe dla swojej grupy FCI, ale codzienne zachowanie zawsze zależy od konkretnego psa, socjalizacji i sposobu prowadzenia. Opiekun powinien obserwować reakcje na ludzi, inne zwierzęta, samotność i pobudzenie.\n\nNajlepsze efekty daje spokojne, konsekwentne wychowanie oparte na nagradzaniu dobrych zachowań. Rasa nie powinna być wybierana wyłącznie po wyglądzie lub popularności, bo potrzeby dnia codziennego są ważniejsze niż pierwsze wrażenie.'),
  ('for_whom', 'Dla kogo będzie dobrym wyborem', 20, '{name} będzie dobrym wyborem dla osób, które przed decyzją realnie ocenią czas na spacery, pielęgnację, szkolenie i budżet. Warto porozmawiać z odpowiedzialnym hodowcą oraz sprawdzić potrzeby konkretnej linii.\n\nTo rasa dla opiekuna gotowego na rutynę, cierpliwość i dopasowanie wymagań do wieku psa. Jeśli dom nie ma czasu na pracę z psem, lepiej odłożyć decyzję niż liczyć, że sama rasa rozwiąże codzienne wyzwania.'),
  ('home_and_apartment', 'Dom i mieszkanie', 30, '{name} może funkcjonować w domu lub mieszkaniu, jeśli opiekun zapewni przewidywalny plan dnia i miejsce do odpoczynku. Sam metraż nie zastępuje spacerów, kontaktu z człowiekiem ani pracy nad spokojem.\n\nW mieszkaniu szczególnie ważna jest nauka wyciszania po aktywności oraz kontrola szczekania lub pobudzenia. Ogród jest dodatkiem, ale nie powinien być jedyną formą aktywności.'),
  ('children_and_family', 'Dzieci i rodzina', 40, '{name} może odnaleźć się w rodzinie, jeśli kontakty z dziećmi są spokojne i nadzorowane. Dzieci powinny wiedzieć, że pies ma prawo do odpoczynku, jedzenia i odejścia z sytuacji.\n\nDorosły odpowiada za bezpieczeństwo obu stron. Wspólne życie jest łatwiejsze, gdy od początku obowiązują proste zasady: nie budzić psa, nie zabierać mu zabawek i nie prowokować gonitw.'),
  ('activity', 'Aktywność', 50, 'Aktywność rasy {name} powinna łączyć ruch, węszenie, krótkie ćwiczenia i odpoczynek. Nawet spokojniejszy pies potrzebuje jakościowych spacerów, a bardziej energiczny nie powinien być tylko fizycznie nakręcany.\n\nDobry plan dnia obejmuje także pracę głową i naukę wyciszenia. Zbyt mało zajęcia może prowadzić do frustracji, ale nadmiar bodźców bez odpoczynku również pogarsza codzienne zachowanie.'),
  ('grooming', 'Pielęgnacja', 60, 'Pielęgnacja rasy {name} powinna obejmować sierść, pazury, uszy, zęby, łapy i kontrolę skóry. Regularne, krótkie zabiegi są zwykle skuteczniejsze niż rzadkie nadrabianie zaniedbań.\n\nZakres pielęgnacji zależy od typu sierści, aktywności i pory roku. W razie problemów skórnych, kołtunów, bólu przy dotyku lub nawracających stanów zapalnych warto skonsultować się ze specjalistą.'),
  ('feeding', 'Żywienie', 70, 'Żywienie rasy {name} powinno być dopasowane do wieku, masy ciała, aktywności, kastracji i stanu zdrowia. Zakres kalorii na Futrio jest orientacyjny i ma pomagać w planowaniu, a nie zastępować zaleceń lekarza weterynarii.\n\nWarto odmierzać porcje, kontrolować przysmaki i regularnie sprawdzać sylwetkę psa. Nagłe zmiany apetytu, masy ciała lub trawienia powinny być omówione z lekarzem.'),
  ('health', 'Zdrowie', 80, 'Informacje zdrowotne dla rasy {name} mają charakter orientacyjny. Opiekun powinien obserwować masę ciała, chód, skórę, apetyt, oddech i poziom energii, szczególnie po zmianie karmy lub intensywności ruchu.\n\nFutrio nie diagnozuje chorób. Każda kulawizna, duszność, przewlekły świąd, biegunka, nagłe osłabienie albo ból wymagają konsultacji z lekarzem weterynarii.'),
  ('costs', 'Koszty utrzymania', 90, 'Koszty utrzymania rasy {name} obejmują karmę, profilaktykę weterynaryjną, zabezpieczenie przeciw pasożytom, pielęgnację, akcesoria i rezerwę na nagłe leczenie. Wydatki rosną wraz z wielkością psa, wymaganiami sierści i potrzebami zdrowotnymi.\n\nKalkulator kosztów Futrio pomaga oszacować miesięczny budżet, ale wynik jest orientacyjny. Ceny zależą od miasta, jakości produktów, standardu opieki oraz indywidualnych potrzeb zwierzęcia.'),
  ('common_mistakes', 'Częste błędy opiekunów', 100, 'Najczęstszy błąd przy rasie {name} to wybór pod wpływem wyglądu, mody lub krótkiego opisu, bez sprawdzenia codziennych obowiązków. Drugim błędem jest odkładanie wychowania, pielęgnacji i kontroli masy ciała na później.\n\nWarto od początku uczyć spokojnego chodzenia na smyczy, przywołania, odpoczynku i akceptowania podstawowych zabiegów. Dobre nawyki są łatwiejsze niż naprawianie utrwalonych problemów.'),
  ('fun_facts', 'Ciekawostki', 110, '{fun_fact}\n\nCiekawostki o rasie są dobrym punktem wejścia, ale w praktyce o dopasowaniu do domu decydują codzienne potrzeby: aktywność, pielęgnacja, relacja z ludźmi i przewidywalna rutyna.'),
  ('faq', 'FAQ', 120, 'P: Czy {name} nadaje się do mieszkania?\nO: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.\n\nP: Ile aktywności potrzebuje {name}?\nO: Aktywność trzeba dopasować do wieku, zdrowia i temperamentu psa, łącząc ruch z pracą umysłową oraz odpoczynkiem.\n\nP: Ile kosztuje utrzymanie tej rasy?\nO: Koszty zależą od karmy, profilaktyki, pielęgnacji i indywidualnych potrzeb zdrowotnych.')
)
INSERT INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT
  b.id,
  t.section_key,
  t.heading,
  replace(
    replace(
      replace(t.body_template, '{name}', b.name),
      '{history_note}', seed.history_note
    ),
    '{fun_fact}', seed.fun_fact
  ),
  t.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
JOIN breed_notes seed ON seed.slug = bs.slug
CROSS JOIN section_templates t
WHERE true
ON CONFLICT(breed_id, section_key) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('basset-hound'),
  ('bloodhound'),
  ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'),
  ('bearded-collie'),
  ('beauceron'),
  ('briard'),
  ('bouvier-des-flandres'),
  ('schipperke'),
  ('eurasier'),
  ('akita-amerykanska'),
  ('szpic-finski'),
  ('finski-lapphund'),
  ('lagotto-romagnolo'),
  ('portugalski-pies-wodny'),
  ('seter-irlandzki'),
  ('seter-angielski'),
  ('seter-szkocki-gordon'),
  ('pointer'),
  ('coton-de-tulear'),
  ('lhasa-apso'),
  ('pekinczyk'),
  ('mops'),
  ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
),
faq_templates(question_template, answer_template, sort_order) AS (
  VALUES
  ('Czy {name} nadaje się do mieszkania?', '{name} może odnaleźć się w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Ważniejsze od metrażu są codzienne potrzeby konkretnego psa.', 10),
  ('Ile aktywności potrzebuje {name}?', '{name} potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. W planie dnia powinny znaleźć się spacery, węszenie, nauka i spokojny odpoczynek.', 20),
  ('Czy {name} jest dobrym wyborem dla rodziny z dziećmi?', '{name} może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady spokojnego kontaktu. Dorosły powinien nadzorować zabawę i pilnować odpoczynku psa.', 30),
  ('Jak pielęgnować rasę {name}?', 'Pielęgnacja powinna obejmować sierść, pazury, uszy, zęby i kontrolę skóry. Zakres zabiegów zależy od typu sierści oraz stylu życia psa.', 40),
  ('Ile może kosztować utrzymanie rasy {name}?', 'Koszt zależy od jakości karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulatory Futrio podają wartości orientacyjne.', 50)
)
INSERT INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT
  b.id,
  replace(f.question_template, '{name}', b.name),
  replace(f.answer_template, '{name}', b.name),
  f.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN faq_templates f
WHERE true
ON CONFLICT(breed_id, question) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('basset-hound'),
  ('bloodhound'),
  ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'),
  ('bearded-collie'),
  ('beauceron'),
  ('briard'),
  ('bouvier-des-flandres'),
  ('schipperke'),
  ('eurasier'),
  ('akita-amerykanska'),
  ('szpic-finski'),
  ('finski-lapphund'),
  ('lagotto-romagnolo'),
  ('portugalski-pies-wodny'),
  ('seter-irlandzki'),
  ('seter-angielski'),
  ('seter-szkocki-gordon'),
  ('pointer'),
  ('coton-de-tulear'),
  ('lhasa-apso'),
  ('pekinczyk'),
  ('mops'),
  ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
INSERT INTO calculator_profiles (
  breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier,
  monthly_food_cost_min_pln, monthly_food_cost_max_pln,
  grooming_cost_min_pln, grooming_cost_max_pln,
  vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes
)
SELECT
  b.id,
  CASE b.activity_level WHEN 'high' THEN 1.6 WHEN 'medium' THEN 1.4 ELSE 1.2 END,
  2.0,
  1.2,
  CASE WHEN b.weight_max_kg >= 40 THEN 300 WHEN b.weight_max_kg >= 20 THEN 220 WHEN b.weight_max_kg >= 10 THEN 150 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 40 THEN 680 WHEN b.weight_max_kg >= 20 THEN 500 WHEN b.weight_max_kg >= 10 THEN 330 ELSE 220 END,
  CASE b.grooming_level WHEN 'high' THEN 130 WHEN 'medium' THEN 70 ELSE 40 END,
  CASE b.grooming_level WHEN 'high' THEN 300 WHEN 'medium' THEN 170 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 130 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 90 ELSE 60 END,
  'Profil kalkulatora dla FCI Batch 2. Wartości orientacyjne do późniejszej weryfikacji redakcyjnej.'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE true
ON CONFLICT(breed_id) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('basset-hound'),
  ('bloodhound'),
  ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'),
  ('bearded-collie'),
  ('beauceron'),
  ('briard'),
  ('bouvier-des-flandres'),
  ('schipperke'),
  ('eurasier'),
  ('akita-amerykanska'),
  ('szpic-finski'),
  ('finski-lapphund'),
  ('lagotto-romagnolo'),
  ('portugalski-pies-wodny'),
  ('seter-irlandzki'),
  ('seter-angielski'),
  ('seter-szkocki-gordon'),
  ('pointer'),
  ('coton-de-tulear'),
  ('lhasa-apso'),
  ('pekinczyk'),
  ('mops'),
  ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT
  b.id,
  '/breeds/photos/' || b.slug || '.png',
  b.name || ' - zdjęcie rasy',
  b.name || ' - zdjęcie rasy',
  'ai_generated',
  1,
  10
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM breed_images existing WHERE existing.breed_id = b.id AND existing.is_primary = 1
);

WITH batch_slugs(slug) AS (
  VALUES
  ('basset-hound'),
  ('bloodhound'),
  ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'),
  ('bearded-collie'),
  ('beauceron'),
  ('briard'),
  ('bouvier-des-flandres'),
  ('schipperke'),
  ('eurasier'),
  ('akita-amerykanska'),
  ('szpic-finski'),
  ('finski-lapphund'),
  ('lagotto-romagnolo'),
  ('portugalski-pies-wodny'),
  ('seter-irlandzki'),
  ('seter-angielski'),
  ('seter-szkocki-gordon'),
  ('pointer'),
  ('coton-de-tulear'),
  ('lhasa-apso'),
  ('pekinczyk'),
  ('mops'),
  ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
)
INSERT INTO affiliate_links (
  breed_id, label, category, url, merchant, network, priority, is_active,
  anchor_text, description, placement, disclosure, button_label
)
SELECT
  b.id,
  'Polecane produkty dla rasy ' || b.name,
  'dry_food',
  'https://example.com/link-afiliacyjny-placeholder',
  'Placeholder',
  'placeholder',
  100,
  1,
  'Sprawdź polecane produkty dla tej rasy',
  'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.',
  'feeding_section',
  'Link może mieć charakter afiliacyjny.',
  'Zobacz polecane produkty'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM affiliate_links al WHERE al.breed_id = b.id AND al.merchant = 'Placeholder'
);

WITH batch_recognitions(slug, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at) AS (
  VALUES
  ('basset-hound', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Basset Hound; numer FCI: 163.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bloodhound', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bloodhound; numer FCI: 84.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('petit-basset-griffon-vendeen', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Petit Basset Griffon Vendéen; numer FCI: 67.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('gonczy-polski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Polish Hunting Dog; numer FCI: 354.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bearded-collie', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bearded Collie; numer FCI: 271.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('beauceron', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Beauceron; numer FCI: 44.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('briard', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Briard; numer FCI: 113.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bouvier-des-flandres', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bouvier des Flandres; numer FCI: 191.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('schipperke', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Schipperke; numer FCI: 83.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('eurasier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Eurasier; numer FCI: 291.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('akita-amerykanska', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: American Akita; numer FCI: 344.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('szpic-finski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Finnish Spitz; numer FCI: 49.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('finski-lapphund', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Finnish Lapphund; numer FCI: 189.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('lagotto-romagnolo', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Lagotto Romagnolo; numer FCI: 298.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('portugalski-pies-wodny', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Portuguese Water Dog; numer FCI: 37.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('seter-irlandzki', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Irish Red Setter; numer FCI: 120.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('seter-angielski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: English Setter; numer FCI: 2.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('seter-szkocki-gordon', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Gordon Setter; numer FCI: 6.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('pointer', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Pointer; numer FCI: 1.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('coton-de-tulear', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Coton de Tuléar; numer FCI: 283.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('lhasa-apso', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Lhasa Apso; numer FCI: 227.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('pekinczyk', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Pekingese; numer FCI: 207.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('mops', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Pug; numer FCI: 253.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('cocker-spaniel-amerykanski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: American Cocker Spaniel; numer FCI: 167.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('springer-spaniel-walijski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Welsh Springer Spaniel; numer FCI: 126.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT b.id, r.organization_code, r.organization_name, r.recognized, r.recognition_status, r.note, r.source_url, r.verified_at
FROM batch_recognitions r
JOIN breeds b ON b.slug = r.slug
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('basset-hound'),
  ('bloodhound'),
  ('petit-basset-griffon-vendeen'),
  ('gonczy-polski'),
  ('bearded-collie'),
  ('beauceron'),
  ('briard'),
  ('bouvier-des-flandres'),
  ('schipperke'),
  ('eurasier'),
  ('akita-amerykanska'),
  ('szpic-finski'),
  ('finski-lapphund'),
  ('lagotto-romagnolo'),
  ('portugalski-pies-wodny'),
  ('seter-irlandzki'),
  ('seter-angielski'),
  ('seter-szkocki-gordon'),
  ('pointer'),
  ('coton-de-tulear'),
  ('lhasa-apso'),
  ('pekinczyk'),
  ('mops'),
  ('cocker-spaniel-amerykanski'),
  ('springer-spaniel-walijski')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT
  b.id,
  o.organization_code,
  o.organization_name,
  0,
  'needs_verification',
  'Status ' || o.organization_code || ' wymaga osobnej weryfikacji w oficjalnym źródle organizacji.',
  NULL,
  NULL
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN orgs o
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;
-- END FCI dog breeds batch 3

-- BEGIN FCI dog breeds batch 4
-- FCI dog breeds pipeline: Batch 4 (2026-06-24).
-- Dodaje kolejne 25 ras psów oraz komplet danych wspierających strony ras.

WITH batch_breeds(
  name, slug, fci_name, fci_number, origin_country,
  traits, history_note, fun_fact,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max
) AS (
  VALUES
  ('Kuvasz', 'kuvasz', 'Kuvasz', '54', 'Hungary', 'duży, czujny i samodzielny pies stróżujący o mocnym instynkcie ochronnym', 'Kuvasz wywodzi się z psów pilnujących stad i majątków, dlatego do dziś ceni niezależność, obserwację otoczenia i rozsądne prowadzenie. Najlepiej odnajduje się u opiekuna, który potrafi połączyć spokojną relację z konsekwentnym wychowaniem dużego psa.', 'Kuvasz łączy elegancką białą szatę z temperamentem psa naprawdę gotowego do pilnowania swojego domu.', 37, 52, 66, 76, 10, 12, 'medium', 'medium', 'hard', 4, 1, 1350, 2100),
  ('Hovawart', 'hovawart', 'Hovawart', '190', 'Germany', 'duży, zrównoważony i bardzo lojalny pies użytkowy silnie związany z rodziną', 'Hovawart rozwijał się jako pies stróżujący i gospodarski, mający jednocześnie pilnować terenu oraz współpracować z człowiekiem. W praktyce potrzebuje relacji, szkolenia i opiekuna, który nie zostawi go bez zajęcia psychicznego.', 'Dobrze prowadzony hovawart potrafi łączyć opanowanie w domu z dużą gotowością do pracy i czuwania.', 25, 40, 58, 70, 11, 13, 'medium', 'medium', 'medium', 5, 2, 950, 1550),
  ('Duży szwajcarski pies pasterski', 'duzy-szwajcarski-pies-pasterski', 'Great Swiss Mountain Dog', '58', 'Switzerland', 'bardzo mocny, spokojny i rodzinny pies pracujący o dużej sile fizycznej', 'Duży szwajcarski pies pasterski był wykorzystywany do pracy przy gospodarstwie, pilnowania i ciągnięcia ładunków. Dziś zachowuje stabilny charakter, ale wymaga miejsca, ruchu i odpowiedzialnego opiekuna znającego potrzeby dużych ras.', 'To jedna z najbardziej masywnych ras szwajcarskich, a mimo gabarytów często sprawia wrażenie spokojnego domownika.', 38, 64, 60, 72, 9, 11, 'medium', 'low', 'medium', 5, 1, 1450, 2400),
  ('Entlebucher', 'entlebucher', 'Entlebuch Cattle Dog', '47', 'Switzerland', 'zwrotny, energiczny i bystry pies pasterski lubiący zadania i ruch', 'Entlebucher rozwijał się jako niewielki, ale wytrzymały pies do pracy przy bydle i gospodarstwie. Jego codzienność do dziś powinna obejmować ruch, zajęcie i jasne zasady, bo to rasa żywa i szybka w reakcjach.', 'Entlebucher jest najmniejszym z czterech klasycznych szwajcarskich psów pasterskich uznanych przez FCI.', 20, 30, 42, 50, 11, 13, 'high', 'low', 'medium', 4, 3, 780, 1250),
  ('Appenzeller', 'appenzeller', 'Appenzell Cattle Dog', '46', 'Switzerland', 'żywy, czujny i bardzo ruchliwy pies pasterski o dużym temperamencie', 'Appenzeller był rozwijany do pilnowania i pracy przy stadach w trudniejszym terenie, dlatego zwykle dobrze znosi aktywność i potrzebuje sensownego zajęcia. Bez ruchu oraz szkolenia łatwo sam organizuje sobie rozrywkę.', 'Charakterystycznie zawinięty ogon i wysoka czujność sprawiają, że appenzeller szybko zwraca na siebie uwagę.', 22, 32, 48, 58, 12, 14, 'high', 'low', 'medium', 4, 2, 850, 1350),
  ('Mastif angielski', 'mastif-angielski', 'Mastiff', '264', 'Great Britain', 'olbrzymi, spokojny i pewny siebie pies o bardzo dużej masie oraz sile', 'Mastif angielski przez wieki był kojarzony z dużym psem stróżującym i obronnym. Współcześnie potrzebuje łagodnego, stabilnego prowadzenia, kontroli masy ciała i spokojnego domu, który poradzi sobie z gabarytami tej rasy.', 'Mastif angielski należy do ras robiących ogromne wrażenie samą obecnością, nawet bez nadmiernej pobudliwości.', 54, 100, 70, 82, 6, 10, 'low', 'low', 'medium', 4, 1, 1800, 3200),
  ('Mastino napoletano', 'mastino-napoletano', 'Neapolitan Mastiff', '197', 'Italy', 'potężny, poważny i bardzo charakterystyczny molos o silnym instynkcie pilnowania', 'Mastino napoletano rozwijał się jako pies stróżujący, którego wygląd i temperament miały robić wrażenie już z daleka. Dzisiaj wymaga doświadczonego opiekuna, spokojnego środowiska i świadomej opieki zdrowotnej.', 'Luźna skóra i ciężka sylwetka tej rasy są jednymi z najbardziej rozpoznawalnych cech w świecie molosów.', 50, 70, 60, 75, 7, 9, 'low', 'low', 'hard', 3, 1, 1700, 2600),
  ('Mastif tybetański', 'mastif-tybetanski', 'Tibetan Mastiff', '230', 'Tibet', 'duży, niezależny i bardzo terytorialny pies stróżujący o imponującej szacie', 'Mastif tybetański wywodzi się z psów pilnujących dobytku w surowych warunkach i przez długi czas działał bardzo samodzielnie. To pochodzenie dobrze tłumaczy jego niezależność, nocną czujność i potrzebę rozsądnych granic.', 'Obfita kryza i spokojna, pewna postawa sprawiają, że mastif tybetański wygląda niezwykle dostojnie.', 34, 64, 61, 76, 10, 12, 'medium', 'high', 'hard', 3, 1, 1250, 2200),
  ('Pinczer niemiecki', 'pinczer-niemiecki', 'German Pinscher', '184', 'Germany', 'czujny, żywy i elegancki pies o dużym temperamencie oraz potrzebie kontaktu', 'Pinczer niemiecki rozwijał się jako sprawny pies użytkowy i towarzysz gospodarstwa. W codziennym życiu zwykle potrzebuje ruchu, szkolenia i opiekuna, który lubi psa szybkiego, błyskotliwego oraz emocjonalnie obecnego.', 'To rasa często niedoceniana, choć była ważną bazą dla rozwoju kilku innych pinczerów i sznaucerów.', 14, 20, 45, 50, 12, 14, 'high', 'low', 'medium', 4, 4, 620, 920),
  ('Affenpinscher', 'affenpinscher', 'Affenpinscher', '186', 'Germany', 'mały, odważny i bardzo charakterystyczny pies do towarzystwa z dużą osobowością', 'Affenpinscher był rozwijany jako niewielki pies użytkowy i towarzyszący, który miał być czujny, szybki i samodzielny. Dziś najlepiej odnajduje się tam, gdzie opiekun szanuje jego temperament i nie traktuje go wyłącznie jak ozdoby.', 'Wyraz pyska affenpinschera sprawił, że w wielu językach bywa kojarzony z małym psim komikiem.', 3, 6, 24, 29, 12, 15, 'medium', 'medium', 'medium', 4, 5, 180, 320),
  ('Sznaucer olbrzym', 'sznaucer-olbrzym', 'Giant Schnauzer', '181', 'Germany', 'silny, aktywny i wymagający pies użytkowy o dużej potrzebie pracy z człowiekiem', 'Sznaucer olbrzym rozwijał się jako mocny pies użytkowy, zdolny do pilnowania, przemieszczania stad i późniejszej pracy służbowej. Dzisiaj wymaga konsekwentnego szkolenia, ruchu i opiekuna, który lubi pracować z dużym, ambitnym psem.', 'Dobrze prowadzony sznaucer olbrzym łączy efektowny wygląd z naprawdę dużym potencjałem treningowym.', 32, 48, 60, 70, 10, 12, 'high', 'high', 'hard', 4, 2, 1200, 1800),
  ('Sznaucer średni', 'sznaucer-sredni', 'Schnauzer', '182', 'Germany', 'czujny, energiczny i bardzo kontaktowy pies o wyraźnym charakterze oraz inteligencji', 'Sznaucer średni łączy cechy psa użytkowego, czuwającego i rodzinnego, dlatego potrzebuje jasnej komunikacji oraz sensownego zajęcia. Najlepiej wypada u opiekuna, który lubi aktywną relację i nie unika pracy nad samokontrolą psa.', 'To właśnie odmiana średnia jest historycznie najbliższa pierwotnemu typowi sznaucera.', 14, 20, 45, 50, 13, 15, 'high', 'high', 'medium', 4, 4, 620, 940),
  ('Norfolk Terrier', 'norfolk-terrier', 'Norfolk Terrier', '272', 'Great Britain', 'mały, wesoły i odważny terier lubiący kontakt z ludźmi oraz codzienną aktywność', 'Norfolk Terrier rozwijał się jako niewielki terier użytkowy, który miał być czujny i gotowy do działania mimo małego wzrostu. Do dziś zwykle potrzebuje ruchu, zabawy i spokojnie prowadzonego wychowania.', 'Norfolk Terrier wyróżnia się opadającymi uszami, co od razu odróżnia go od blisko spokrewnionego norwicha.', 5, 6, 24, 26, 12, 15, 'medium', 'medium', 'easy', 5, 5, 220, 360),
  ('Lakeland Terrier', 'lakeland-terrier', 'Lakeland Terrier', '70', 'Great Britain', 'żywy, pewny siebie i czujny terier o zwartej budowie oraz dużej ciekawości', 'Lakeland Terrier pracował jako terier użytkowy i do dziś zachował temperament psa gotowego do działania. W praktyce dobrze służą mu krótkie treningi, ruch i opiekun, który nie wzmacnia nadmiernej impulsywności.', 'Jego szorstka szata i proporcjonalna sylwetka sprawiają, że bywa uważany za jednego z bardziej eleganckich terierów roboczych.', 7, 8, 34, 38, 12, 15, 'high', 'high', 'medium', 4, 4, 280, 430),
  ('Irish Terrier', 'irish-terrier', 'Irish Terrier', '139', 'Ireland', 'odważny, szybki i bardzo żywy terier o wyraźnym temperamencie oraz przywiązaniu do domu', 'Irish Terrier wywodzi się z psów użytkowych cenionych za odwagę i samodzielność. W nowoczesnym domu potrzebuje ruchu, relacji i opiekuna, który potrafi prowadzić psa zdecydowanego, ale wrażliwego na sposób komunikacji.', 'Ruda szata i żywe spojrzenie sprawiają, że irish terrier ma bardzo charakterystyczny, rozpoznawalny typ.', 11, 13, 44, 48, 13, 15, 'high', 'medium', 'medium', 4, 3, 430, 700),
  ('Kerry Blue Terrier', 'kerry-blue-terrier', 'Kerry Blue Terrier', '3', 'Ireland', 'energiczny, pewny siebie i inteligentny terier o miękkiej falowanej szacie', 'Kerry Blue Terrier rozwijał się jako wszechstronny pies użytkowy, dlatego do dziś potrzebuje nie tylko spacerów, ale też pracy głową. To rasa zwykle bardzo bystra, która wymaga konsekwentnych zasad i pielęgnacji.', 'Szczenięta tej rasy rodzą się ciemne, a charakterystyczny niebieskawy odcień szaty rozwija się później.', 15, 18, 44, 50, 12, 14, 'high', 'high', 'medium', 4, 3, 620, 950),
  ('Welsh Terrier', 'welsh-terrier', 'Welsh Terrier', '78', 'Great Britain', 'zadziorny, ruchliwy i bardzo bystry terier potrzebujący zajęcia oraz przewidywalnych zasad', 'Welsh Terrier był rozwijany jako pies użytkowy do pracy w terenie i do dziś nosi w sobie dużo energii oraz niezależności. Najlepiej radzi sobie przy aktywnym opiekunie, który lubi krótkie treningi i nie zostawia psa bez planu na dzień.', 'Choć sylwetką przypomina mniejszego airedale terriera, welsh ma własny mocny charakter i bardzo żywy temperament.', 8, 10, 37, 39, 12, 14, 'high', 'high', 'medium', 4, 4, 320, 500),
  ('Australian Terrier', 'australian-terrier', 'Australian Terrier', '8', 'Australia', 'mały, dzielny i aktywny terier o dużej gotowości do eksploracji oraz bliskości z człowiekiem', 'Australian Terrier łączy cechy małego towarzysza i psa użytkowego zdolnego do szybkiego działania. W domu potrzebuje ruchu, zabawy oraz opiekuna, który świadomie buduje dobre nawyki zamiast liczyć na sam rozmiar.', 'To jedna z najstarszych ras wyhodowanych w Australii i jedna z pierwszych oficjalnie uznanych tamtejszych ras psów.', 5, 7, 23, 28, 12, 15, 'high', 'medium', 'easy', 5, 5, 230, 380),
  ('Bedlington Terrier', 'bedlington-terrier', 'Bedlington Terrier', '9', 'Great Britain', 'sprężysty, żywy i elegancki terier o nietypowej sylwetce oraz miękkiej szacie', 'Bedlington Terrier rozwijał się jako sprawny terier, choć dziś często kojarzy się głównie z charakterystycznym wyglądem. W praktyce nadal potrzebuje ruchu, szkolenia i sensownego planu dnia, a nie wyłącznie pielęgnacji.', 'Jego sylwetka bywa porównywana do owieczki, ale temperament pozostaje zdecydowanie terierowy.', 8, 10, 38, 44, 12, 15, 'high', 'high', 'medium', 4, 4, 320, 500),
  ('Dandie Dinmont Terrier', 'dandie-dinmont-terrier', 'Dandie Dinmont Terrier', '168', 'Great Britain', 'niski, odważny i czujny terier o charakterystycznym wydłużonym tułowiu i miękkiej czuprynie', 'Dandie Dinmont Terrier wywodzi się z psów użytkowych, ale współcześnie częściej żyje jako towarzysz w domu. Nadal jednak potrzebuje ruchu, spokojnego treningu i ochrony kręgosłupa wynikającej z jego budowy.', 'To jedna z niewielu ras psów nazwana od postaci literackiej, a nie od regionu czy funkcji użytkowej.', 8, 11, 20, 28, 12, 15, 'medium', 'high', 'medium', 4, 5, 280, 450),
  ('Border Terrier', 'border-terrier', 'Border Terrier', '10', 'Great Britain', 'mały, odporny i bardzo ruchliwy terier lubiący pracę, węszenie i kontakt z ludźmi', 'Border Terrier rozwijał się jako terier użytkowy zdolny nadążać za dłuższą pracą w terenie. To tłumaczy jego wytrzymałość, zdrowy zapał do aktywności i potrzebę zajęcia, choć zwykle dobrze współpracuje z rodziną.', 'Border Terrier jest znany z charakterystycznej głowy porównywanej do kształtu wydry.', 5, 8, 28, 40, 12, 15, 'high', 'medium', 'easy', 5, 5, 240, 420),
  ('Terier czeski', 'terier-czeski', 'Cesky Terrier', '246', 'Czech Republic', 'spokojniejszy, bystry i kontaktowy terier o wydłużonej sylwetce oraz jedwabistej szacie', 'Terier czeski został stworzony jako rasa użytkowa, ale od początku zakładano też bardziej zrównoważony charakter niż u wielu innych terierów. Nadal potrzebuje ruchu i zasad, lecz często łatwiej odnajduje się w życiu domowym.', 'To jedna z nielicznych ras stworzonych w Czechach i zaplanowanych od początku z bardzo konkretnym celem hodowlanym.', 6, 10, 25, 32, 12, 15, 'medium', 'high', 'easy', 5, 5, 240, 430),
  ('Sealyham Terrier', 'sealyham-terrier', 'Sealyham Terrier', '74', 'Great Britain', 'niewielki, odważny i zdecydowany terier o mocnej sylwetce i wyrazistym charakterze', 'Sealyham Terrier rozwijał się jako niewielki pies użytkowy, który miał zachować odwagę mimo mniejszego wzrostu. Dziś zwykle potrzebuje ruchu, pielęgnacji i opiekuna, który konsekwentnie buduje dobre zachowania.', 'Gęsta biała szata sealyhama sprawia, że wygląda elegancko, ale pod spodem kryje się pełnoprawny terier.', 8, 10, 27, 31, 12, 14, 'medium', 'high', 'medium', 4, 5, 280, 430),
  ('Skye Terrier', 'skye-terrier', 'Skye Terrier', '75', 'Great Britain', 'wydłużony, lojalny i czujny terier o imponującej długiej szacie oraz silnym przywiązaniu', 'Skye Terrier historycznie był psem użytkowym, ale współcześnie najczęściej żyje jako uważny towarzysz. Potrzebuje spokojnej relacji, pielęgnacji i opiekuna, który szanuje jego wyraźny charakter oraz nieco bardziej zdystansowaną naturę.', 'Długa szata i niskie osadzenie ciała nadają skye terierowi wyjątkowo charakterystyczny profil.', 10, 14, 24, 28, 11, 13, 'medium', 'high', 'medium', 4, 4, 340, 520),
  ('Parson Russell Terrier', 'parson-russell-terrier', 'Parson Russell Terrier', '339', 'Great Britain', 'sprężysty, szybki i bardzo energiczny terier potrzebujący ruchu, zabawy i pracy głową', 'Parson Russell Terrier rozwijał się jako terier użytkowy gotowy do dynamicznej pracy w terenie. To nadal rasa dla aktywnych ludzi, którzy rozumieją potrzebę ruchu, samokontroli i codziennego zajęcia psa.', 'Parson Russell Terrier jest wyższy i bardziej kwadratowy w sylwetce niż popularny jack russell terrier.', 6, 8, 33, 36, 13, 15, 'high', 'medium', 'medium', 4, 4, 260, 420)
)
INSERT INTO breeds (
  name, slug, species, short_description, long_description,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max,
  meta_title, meta_description, h1, status
)
SELECT
  name,
  slug,
  'dog',
  name || ' to ' || traits || '.',
  name || ' to rasa dla opiekunów, którzy rozumieją jej codzienne potrzeby. To ' || traits || ', dlatego wymaga ruchu, żywienia i pielęgnacji dopasowanych do wieku, zdrowia oraz trybu życia. Opis Futrio pomaga zaplanować opiekę, ale nie zastępuje rozmowy z hodowcą, behawiorystą ani lekarzem weterynarii.',
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
  name || ' - opis rasy, charakter i koszty | Futrio',
  'Poznaj rasę ' || name || ': charakter, potrzeby, żywienie, pielęgnację, zdrowie i orientacyjne koszty utrzymania.',
  name || ' - opis rasy, charakter i koszty utrzymania',
  'published'
FROM batch_breeds
WHERE true
ON CONFLICT(slug) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('kuvasz'),
  ('hovawart'),
  ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'),
  ('appenzeller'),
  ('mastif-angielski'),
  ('mastino-napoletano'),
  ('mastif-tybetanski'),
  ('pinczer-niemiecki'),
  ('affenpinscher'),
  ('sznaucer-olbrzym'),
  ('sznaucer-sredni'),
  ('norfolk-terrier'),
  ('lakeland-terrier'),
  ('irish-terrier'),
  ('kerry-blue-terrier'),
  ('welsh-terrier'),
  ('australian-terrier'),
  ('bedlington-terrier'),
  ('dandie-dinmont-terrier'),
  ('border-terrier'),
  ('terier-czeski'),
  ('sealyham-terrier'),
  ('skye-terrier'),
  ('parson-russell-terrier')
),
breed_notes(slug, history_note, fun_fact) AS (
  VALUES
  ('kuvasz', 'Kuvasz wywodzi się z psów pilnujących stad i majątków, dlatego do dziś ceni niezależność, obserwację otoczenia i rozsądne prowadzenie. Najlepiej odnajduje się u opiekuna, który potrafi połączyć spokojną relację z konsekwentnym wychowaniem dużego psa.', 'Kuvasz łączy elegancką białą szatę z temperamentem psa naprawdę gotowego do pilnowania swojego domu.'),
  ('hovawart', 'Hovawart rozwijał się jako pies stróżujący i gospodarski, mający jednocześnie pilnować terenu oraz współpracować z człowiekiem. W praktyce potrzebuje relacji, szkolenia i opiekuna, który nie zostawi go bez zajęcia psychicznego.', 'Dobrze prowadzony hovawart potrafi łączyć opanowanie w domu z dużą gotowością do pracy i czuwania.'),
  ('duzy-szwajcarski-pies-pasterski', 'Duży szwajcarski pies pasterski był wykorzystywany do pracy przy gospodarstwie, pilnowania i ciągnięcia ładunków. Dziś zachowuje stabilny charakter, ale wymaga miejsca, ruchu i odpowiedzialnego opiekuna znającego potrzeby dużych ras.', 'To jedna z najbardziej masywnych ras szwajcarskich, a mimo gabarytów często sprawia wrażenie spokojnego domownika.'),
  ('entlebucher', 'Entlebucher rozwijał się jako niewielki, ale wytrzymały pies do pracy przy bydle i gospodarstwie. Jego codzienność do dziś powinna obejmować ruch, zajęcie i jasne zasady, bo to rasa żywa i szybka w reakcjach.', 'Entlebucher jest najmniejszym z czterech klasycznych szwajcarskich psów pasterskich uznanych przez FCI.'),
  ('appenzeller', 'Appenzeller był rozwijany do pilnowania i pracy przy stadach w trudniejszym terenie, dlatego zwykle dobrze znosi aktywność i potrzebuje sensownego zajęcia. Bez ruchu oraz szkolenia łatwo sam organizuje sobie rozrywkę.', 'Charakterystycznie zawinięty ogon i wysoka czujność sprawiają, że appenzeller szybko zwraca na siebie uwagę.'),
  ('mastif-angielski', 'Mastif angielski przez wieki był kojarzony z dużym psem stróżującym i obronnym. Współcześnie potrzebuje łagodnego, stabilnego prowadzenia, kontroli masy ciała i spokojnego domu, który poradzi sobie z gabarytami tej rasy.', 'Mastif angielski należy do ras robiących ogromne wrażenie samą obecnością, nawet bez nadmiernej pobudliwości.'),
  ('mastino-napoletano', 'Mastino napoletano rozwijał się jako pies stróżujący, którego wygląd i temperament miały robić wrażenie już z daleka. Dzisiaj wymaga doświadczonego opiekuna, spokojnego środowiska i świadomej opieki zdrowotnej.', 'Luźna skóra i ciężka sylwetka tej rasy są jednymi z najbardziej rozpoznawalnych cech w świecie molosów.'),
  ('mastif-tybetanski', 'Mastif tybetański wywodzi się z psów pilnujących dobytku w surowych warunkach i przez długi czas działał bardzo samodzielnie. To pochodzenie dobrze tłumaczy jego niezależność, nocną czujność i potrzebę rozsądnych granic.', 'Obfita kryza i spokojna, pewna postawa sprawiają, że mastif tybetański wygląda niezwykle dostojnie.'),
  ('pinczer-niemiecki', 'Pinczer niemiecki rozwijał się jako sprawny pies użytkowy i towarzysz gospodarstwa. W codziennym życiu zwykle potrzebuje ruchu, szkolenia i opiekuna, który lubi psa szybkiego, błyskotliwego oraz emocjonalnie obecnego.', 'To rasa często niedoceniana, choć była ważną bazą dla rozwoju kilku innych pinczerów i sznaucerów.'),
  ('affenpinscher', 'Affenpinscher był rozwijany jako niewielki pies użytkowy i towarzyszący, który miał być czujny, szybki i samodzielny. Dziś najlepiej odnajduje się tam, gdzie opiekun szanuje jego temperament i nie traktuje go wyłącznie jak ozdoby.', 'Wyraz pyska affenpinschera sprawił, że w wielu językach bywa kojarzony z małym psim komikiem.'),
  ('sznaucer-olbrzym', 'Sznaucer olbrzym rozwijał się jako mocny pies użytkowy, zdolny do pilnowania, przemieszczania stad i późniejszej pracy służbowej. Dzisiaj wymaga konsekwentnego szkolenia, ruchu i opiekuna, który lubi pracować z dużym, ambitnym psem.', 'Dobrze prowadzony sznaucer olbrzym łączy efektowny wygląd z naprawdę dużym potencjałem treningowym.'),
  ('sznaucer-sredni', 'Sznaucer średni łączy cechy psa użytkowego, czuwającego i rodzinnego, dlatego potrzebuje jasnej komunikacji oraz sensownego zajęcia. Najlepiej wypada u opiekuna, który lubi aktywną relację i nie unika pracy nad samokontrolą psa.', 'To właśnie odmiana średnia jest historycznie najbliższa pierwotnemu typowi sznaucera.'),
  ('norfolk-terrier', 'Norfolk Terrier rozwijał się jako niewielki terier użytkowy, który miał być czujny i gotowy do działania mimo małego wzrostu. Do dziś zwykle potrzebuje ruchu, zabawy i spokojnie prowadzonego wychowania.', 'Norfolk Terrier wyróżnia się opadającymi uszami, co od razu odróżnia go od blisko spokrewnionego norwicha.'),
  ('lakeland-terrier', 'Lakeland Terrier pracował jako terier użytkowy i do dziś zachował temperament psa gotowego do działania. W praktyce dobrze służą mu krótkie treningi, ruch i opiekun, który nie wzmacnia nadmiernej impulsywności.', 'Jego szorstka szata i proporcjonalna sylwetka sprawiają, że bywa uważany za jednego z bardziej eleganckich terierów roboczych.'),
  ('irish-terrier', 'Irish Terrier wywodzi się z psów użytkowych cenionych za odwagę i samodzielność. W nowoczesnym domu potrzebuje ruchu, relacji i opiekuna, który potrafi prowadzić psa zdecydowanego, ale wrażliwego na sposób komunikacji.', 'Ruda szata i żywe spojrzenie sprawiają, że irish terrier ma bardzo charakterystyczny, rozpoznawalny typ.'),
  ('kerry-blue-terrier', 'Kerry Blue Terrier rozwijał się jako wszechstronny pies użytkowy, dlatego do dziś potrzebuje nie tylko spacerów, ale też pracy głową. To rasa zwykle bardzo bystra, która wymaga konsekwentnych zasad i pielęgnacji.', 'Szczenięta tej rasy rodzą się ciemne, a charakterystyczny niebieskawy odcień szaty rozwija się później.'),
  ('welsh-terrier', 'Welsh Terrier był rozwijany jako pies użytkowy do pracy w terenie i do dziś nosi w sobie dużo energii oraz niezależności. Najlepiej radzi sobie przy aktywnym opiekunie, który lubi krótkie treningi i nie zostawia psa bez planu na dzień.', 'Choć sylwetką przypomina mniejszego airedale terriera, welsh ma własny mocny charakter i bardzo żywy temperament.'),
  ('australian-terrier', 'Australian Terrier łączy cechy małego towarzysza i psa użytkowego zdolnego do szybkiego działania. W domu potrzebuje ruchu, zabawy oraz opiekuna, który świadomie buduje dobre nawyki zamiast liczyć na sam rozmiar.', 'To jedna z najstarszych ras wyhodowanych w Australii i jedna z pierwszych oficjalnie uznanych tamtejszych ras psów.'),
  ('bedlington-terrier', 'Bedlington Terrier rozwijał się jako sprawny terier, choć dziś często kojarzy się głównie z charakterystycznym wyglądem. W praktyce nadal potrzebuje ruchu, szkolenia i sensownego planu dnia, a nie wyłącznie pielęgnacji.', 'Jego sylwetka bywa porównywana do owieczki, ale temperament pozostaje zdecydowanie terierowy.'),
  ('dandie-dinmont-terrier', 'Dandie Dinmont Terrier wywodzi się z psów użytkowych, ale współcześnie częściej żyje jako towarzysz w domu. Nadal jednak potrzebuje ruchu, spokojnego treningu i ochrony kręgosłupa wynikającej z jego budowy.', 'To jedna z niewielu ras psów nazwana od postaci literackiej, a nie od regionu czy funkcji użytkowej.'),
  ('border-terrier', 'Border Terrier rozwijał się jako terier użytkowy zdolny nadążać za dłuższą pracą w terenie. To tłumaczy jego wytrzymałość, zdrowy zapał do aktywności i potrzebę zajęcia, choć zwykle dobrze współpracuje z rodziną.', 'Border Terrier jest znany z charakterystycznej głowy porównywanej do kształtu wydry.'),
  ('terier-czeski', 'Terier czeski został stworzony jako rasa użytkowa, ale od początku zakładano też bardziej zrównoważony charakter niż u wielu innych terierów. Nadal potrzebuje ruchu i zasad, lecz często łatwiej odnajduje się w życiu domowym.', 'To jedna z nielicznych ras stworzonych w Czechach i zaplanowanych od początku z bardzo konkretnym celem hodowlanym.'),
  ('sealyham-terrier', 'Sealyham Terrier rozwijał się jako niewielki pies użytkowy, który miał zachować odwagę mimo mniejszego wzrostu. Dziś zwykle potrzebuje ruchu, pielęgnacji i opiekuna, który konsekwentnie buduje dobre zachowania.', 'Gęsta biała szata sealyhama sprawia, że wygląda elegancko, ale pod spodem kryje się pełnoprawny terier.'),
  ('skye-terrier', 'Skye Terrier historycznie był psem użytkowym, ale współcześnie najczęściej żyje jako uważny towarzysz. Potrzebuje spokojnej relacji, pielęgnacji i opiekuna, który szanuje jego wyraźny charakter oraz nieco bardziej zdystansowaną naturę.', 'Długa szata i niskie osadzenie ciała nadają skye terierowi wyjątkowo charakterystyczny profil.'),
  ('parson-russell-terrier', 'Parson Russell Terrier rozwijał się jako terier użytkowy gotowy do dynamicznej pracy w terenie. To nadal rasa dla aktywnych ludzi, którzy rozumieją potrzebę ruchu, samokontroli i codziennego zajęcia psa.', 'Parson Russell Terrier jest wyższy i bardziej kwadratowy w sylwetce niż popularny jack russell terrier.')
),

section_templates(section_key, heading, sort_order, body_template) AS (
  VALUES
  ('character', 'Najważniejsze informacje', 10, '{name} to rasa dla opiekunów, którzy rozumieją jej codzienne potrzeby. To {traits}, dlatego wymaga ruchu, żywienia i pielęgnacji dopasowanych do wieku, zdrowia oraz trybu życia. Opis Futrio pomaga zaplanować opiekę, ale nie zastępuje rozmowy z hodowcą, behawiorystą ani lekarzem weterynarii.

Rasa nie powinna być wybierana wyłącznie po wyglądzie lub popularności, bo potrzeby dnia codziennego są ważniejsze niż pierwsze wrażenie.'),
  ('for_whom', 'Dla kogo będzie dobrym wyborem', 20, '{name} będzie dobrym wyborem dla osób, które przed decyzją realnie ocenią czas na spacery, pielęgnację, szkolenie i budżet. Warto porozmawiać z odpowiedzialnym hodowcą oraz sprawdzić potrzeby konkretnej linii.

To rasa dla opiekuna gotowego na rutynę, cierpliwość i dopasowanie wymagań do wieku psa. Jeśli dom nie ma czasu na pracę z psem, lepiej odłożyć decyzję niż liczyć, że sama rasa rozwiąże codzienne wyzwania.'),
  ('home_and_apartment', 'Dom i mieszkanie', 30, '{name} może funkcjonować w domu lub mieszkaniu, jeśli opiekun zapewni przewidywalny plan dnia i miejsce do odpoczynku. Sam metraż nie zastępuje spacerów, kontaktu z człowiekiem ani pracy nad spokojem.

W mieszkaniu szczególnie ważna jest nauka wyciszania po aktywności oraz kontrola szczekania lub pobudzenia. Ogród jest dodatkiem, ale nie powinien być jedyną formą aktywności.'),
  ('children_and_family', 'Dzieci i rodzina', 40, '{name} może odnaleźć się w rodzinie, jeśli kontakty z dziećmi są spokojne i nadzorowane. Dzieci powinny wiedzieć, że pies ma prawo do odpoczynku, jedzenia i odejścia z sytuacji.

Dorosły odpowiada za bezpieczeństwo obu stron. Wspólne życie jest łatwiejsze, gdy od początku obowiązują proste zasady: nie budzić psa, nie zabierać mu zabawek i nie prowokować gonitw.'),
  ('activity', 'Aktywność', 50, 'Aktywność rasy {name} powinna łączyć ruch, węszenie, krótkie ćwiczenia i odpoczynek. Nawet spokojniejszy pies potrzebuje jakościowych spacerów, a bardziej energiczny nie powinien być tylko fizycznie nakręcany.

Dobry plan dnia obejmuje także pracę głową i naukę wyciszenia. Zbyt mało zajęcia może prowadzić do frustracji, ale nadmiar bodźców bez odpoczynku również pogarsza codzienne zachowanie.'),
  ('grooming', 'Pielęgnacja', 60, 'Pielęgnacja rasy {name} powinna obejmować sierść, pazury, uszy, zęby, łapy i kontrolę skóry. Regularne, krótkie zabiegi są zwykle skuteczniejsze niż rzadkie nadrabianie zaniedbań.

Zakres pielęgnacji zależy od typu sierści, aktywności i pory roku. W razie problemów skórnych, kołtunów, bólu przy dotyku lub nawracających stanów zapalnych warto skonsultować się ze specjalistą.'),
  ('feeding', 'Żywienie', 70, 'Żywienie rasy {name} powinno być dopasowane do wieku, masy ciała, aktywności, kastracji i stanu zdrowia. Zakres kalorii na Futrio jest orientacyjny i ma pomagać w planowaniu, a nie zastępować zaleceń lekarza weterynarii.

Warto odmierzać porcje, kontrolować przysmaki i regularnie sprawdzać sylwetkę psa. Nagłe zmiany apetytu, masy ciała lub trawienia powinny być omówione z lekarzem.'),
  ('health', 'Zdrowie', 80, 'Informacje zdrowotne dla rasy {name} mają charakter orientacyjny. Opiekun powinien obserwować masę ciała, chód, skórę, apetyt, oddech i poziom energii, szczególnie po zmianie karmy lub intensywności ruchu.

Futrio nie diagnozuje chorób. Każda kulawizna, duszność, przewlekły świąd, biegunka, nagłe osłabienie albo ból wymagają konsultacji z lekarzem weterynarii.'),
  ('costs', 'Koszty utrzymania', 90, 'Koszty utrzymania rasy {name} obejmują karmę, profilaktykę weterynaryjną, zabezpieczenie przeciw pasożytom, pielęgnację, akcesoria i rezerwę na nagłe leczenie. Wydatki rosną wraz z wielkością psa, wymaganiami sierści i potrzebami zdrowotnymi.

Kalkulator kosztów Futrio pomaga oszacować miesięczny budżet, ale wynik jest orientacyjny. Ceny zależą od miasta, jakości produktów, standardu opieki oraz indywidualnych potrzeb zwierzęcia.'),
  ('common_mistakes', 'Częste błędy opiekunów', 100, 'Najczęstszy błąd przy rasie {name} to wybór pod wpływem wyglądu, mody lub krótkiego opisu, bez sprawdzenia codziennych obowiązków. Drugim błędem jest odkładanie wychowania, pielęgnacji i kontroli masy ciała na później.

Warto od początku uczyć spokojnego chodzenia na smyczy, przywołania, odpoczynku i akceptowania podstawowych zabiegów. Dobre nawyki są łatwiejsze niż naprawianie utrwalonych problemów.'),
  ('fun_facts', 'Ciekawostki', 110, '{fun_fact}

Ciekawostki o rasie są dobrym punktem wejścia, ale w praktyce o dopasowaniu do domu decydują codzienne potrzeby: aktywność, pielęgnacja, relacja z ludźmi i przewidywalna rutyna.'),
  ('faq', 'FAQ', 120, 'P: Czy {name} nadaje się do mieszkania?
O: To zależy od aktywności, rutyny i możliwości opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Ile aktywności potrzebuje {name}?
O: Aktywność trzeba dopasować do wieku, zdrowia i temperamentu psa, łącząc ruch z pracą umysłową oraz odpoczynkiem.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty zależą od karmy, profilaktyki, pielęgnacji i indywidualnych potrzeb zdrowotnych.')
)
INSERT INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT
  b.id,
  t.section_key,
  t.heading,
  replace(
    replace(
      replace(t.body_template, '{name}', b.name),
      '{history_note}', seed.history_note
    ),
    '{fun_fact}', seed.fun_fact
  ),
  t.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
JOIN breed_notes seed ON seed.slug = bs.slug
CROSS JOIN section_templates t
WHERE true
ON CONFLICT(breed_id, section_key) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('kuvasz'),
  ('hovawart'),
  ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'),
  ('appenzeller'),
  ('mastif-angielski'),
  ('mastino-napoletano'),
  ('mastif-tybetanski'),
  ('pinczer-niemiecki'),
  ('affenpinscher'),
  ('sznaucer-olbrzym'),
  ('sznaucer-sredni'),
  ('norfolk-terrier'),
  ('lakeland-terrier'),
  ('irish-terrier'),
  ('kerry-blue-terrier'),
  ('welsh-terrier'),
  ('australian-terrier'),
  ('bedlington-terrier'),
  ('dandie-dinmont-terrier'),
  ('border-terrier'),
  ('terier-czeski'),
  ('sealyham-terrier'),
  ('skye-terrier'),
  ('parson-russell-terrier')
),

faq_templates(question_template, answer_template, sort_order) AS (
  VALUES
  ('Czy {name} nadaje się do mieszkania?', '{name} może odnaleźć się w mieszkaniu, jeśli opiekun zapewni ruch, wyciszenie i przewidywalną rutynę. Ważniejsze od metrażu są codzienne potrzeby konkretnego psa.', 10),
  ('Ile aktywności potrzebuje {name}?', '{name} potrzebuje aktywności dopasowanej do wieku, zdrowia i temperamentu. W planie dnia powinny znaleźć się spacery, węszenie, nauka i spokojny odpoczynek.', 20),
  ('Czy {name} jest dobrym wyborem dla rodziny z dziećmi?', '{name} może dobrze funkcjonować w rodzinie, jeśli dzieci znają zasady spokojnego kontaktu. Dorosły powinien nadzorować zabawę i pilnować odpoczynku psa.', 30),
  ('Jak pielęgnować rasę {name}?', 'Pielęgnacja powinna obejmować sierść, pazury, uszy, zęby i kontrolę skóry. Zakres zabiegów zależy od typu sierści oraz stylu życia psa.', 40),
  ('Ile może kosztować utrzymanie rasy {name}?', 'Koszt zależy od jakości karmy, profilaktyki, pielęgnacji, akcesoriów i ewentualnych potrzeb zdrowotnych. Kalkulatory Futrio podają wartości orientacyjne.', 50)
)
INSERT INTO breed_faqs (breed_id, question, answer, sort_order)
SELECT
  b.id,
  replace(f.question_template, '{name}', b.name),
  replace(f.answer_template, '{name}', b.name),
  f.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN faq_templates f
WHERE true
ON CONFLICT(breed_id, question) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('kuvasz'),
  ('hovawart'),
  ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'),
  ('appenzeller'),
  ('mastif-angielski'),
  ('mastino-napoletano'),
  ('mastif-tybetanski'),
  ('pinczer-niemiecki'),
  ('affenpinscher'),
  ('sznaucer-olbrzym'),
  ('sznaucer-sredni'),
  ('norfolk-terrier'),
  ('lakeland-terrier'),
  ('irish-terrier'),
  ('kerry-blue-terrier'),
  ('welsh-terrier'),
  ('australian-terrier'),
  ('bedlington-terrier'),
  ('dandie-dinmont-terrier'),
  ('border-terrier'),
  ('terier-czeski'),
  ('sealyham-terrier'),
  ('skye-terrier'),
  ('parson-russell-terrier')
)
INSERT INTO calculator_profiles (
  breed_id, base_activity_multiplier, puppy_multiplier, senior_multiplier,
  monthly_food_cost_min_pln, monthly_food_cost_max_pln,
  grooming_cost_min_pln, grooming_cost_max_pln,
  vet_cost_monthly_estimate_pln, accessories_monthly_estimate_pln, notes
)
SELECT
  b.id,
  CASE b.activity_level WHEN 'high' THEN 1.6 WHEN 'medium' THEN 1.4 ELSE 1.2 END,
  2.0,
  1.2,
  CASE WHEN b.weight_max_kg >= 40 THEN 300 WHEN b.weight_max_kg >= 20 THEN 220 WHEN b.weight_max_kg >= 10 THEN 150 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 40 THEN 680 WHEN b.weight_max_kg >= 20 THEN 500 WHEN b.weight_max_kg >= 10 THEN 330 ELSE 220 END,
  CASE b.grooming_level WHEN 'high' THEN 130 WHEN 'medium' THEN 70 ELSE 40 END,
  CASE b.grooming_level WHEN 'high' THEN 300 WHEN 'medium' THEN 170 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 130 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 90 ELSE 60 END,
  'Profil kalkulatora dla FCI Batch 4. Wartości orientacyjne do późniejszej weryfikacji redakcyjnej.'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE true
ON CONFLICT(breed_id) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('kuvasz'),
  ('hovawart'),
  ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'),
  ('appenzeller'),
  ('mastif-angielski'),
  ('mastino-napoletano'),
  ('mastif-tybetanski'),
  ('pinczer-niemiecki'),
  ('affenpinscher'),
  ('sznaucer-olbrzym'),
  ('sznaucer-sredni'),
  ('norfolk-terrier'),
  ('lakeland-terrier'),
  ('irish-terrier'),
  ('kerry-blue-terrier'),
  ('welsh-terrier'),
  ('australian-terrier'),
  ('bedlington-terrier'),
  ('dandie-dinmont-terrier'),
  ('border-terrier'),
  ('terier-czeski'),
  ('sealyham-terrier'),
  ('skye-terrier'),
  ('parson-russell-terrier')
)
INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT
  b.id,
  '/breeds/photos/' || b.slug || '.png',
  b.name || ' - zdjęcie rasy',
  b.name || ' - zdjęcie rasy',
  'ai_generated',
  1,
  10
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM breed_images existing WHERE existing.breed_id = b.id AND existing.is_primary = 1
);

WITH batch_slugs(slug) AS (
  VALUES
  ('kuvasz'),
  ('hovawart'),
  ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'),
  ('appenzeller'),
  ('mastif-angielski'),
  ('mastino-napoletano'),
  ('mastif-tybetanski'),
  ('pinczer-niemiecki'),
  ('affenpinscher'),
  ('sznaucer-olbrzym'),
  ('sznaucer-sredni'),
  ('norfolk-terrier'),
  ('lakeland-terrier'),
  ('irish-terrier'),
  ('kerry-blue-terrier'),
  ('welsh-terrier'),
  ('australian-terrier'),
  ('bedlington-terrier'),
  ('dandie-dinmont-terrier'),
  ('border-terrier'),
  ('terier-czeski'),
  ('sealyham-terrier'),
  ('skye-terrier'),
  ('parson-russell-terrier')
)
INSERT INTO affiliate_links (
  breed_id, label, category, url, merchant, network, priority, is_active,
  anchor_text, description, placement, disclosure, button_label
)
SELECT
  b.id,
  'Polecane produkty dla rasy ' || b.name,
  'dry_food',
  'https://example.com/link-afiliacyjny-placeholder',
  'Placeholder',
  'placeholder',
  100,
  1,
  'Sprawdź polecane produkty dla tej rasy',
  'W tym miejscu pojawią się produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiązania dla opiekunów.',
  'feeding_section',
  'Link może mieć charakter afiliacyjny.',
  'Zobacz polecane produkty'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM affiliate_links al WHERE al.breed_id = b.id AND al.merchant = 'Placeholder'
);

WITH batch_recognitions(slug, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at) AS (
  VALUES
  ('kuvasz', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Kuvasz; numer FCI: 54.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('hovawart', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Hovawart; numer FCI: 190.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('duzy-szwajcarski-pies-pasterski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Great Swiss Mountain Dog; numer FCI: 58.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('entlebucher', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Entlebuch Cattle Dog; numer FCI: 47.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('appenzeller', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Appenzell Cattle Dog; numer FCI: 46.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('mastif-angielski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Mastiff; numer FCI: 264.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('mastino-napoletano', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Neapolitan Mastiff; numer FCI: 197.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('mastif-tybetanski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Tibetan Mastiff; numer FCI: 230.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('pinczer-niemiecki', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: German Pinscher; numer FCI: 184.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('affenpinscher', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Affenpinscher; numer FCI: 186.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('sznaucer-olbrzym', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Giant Schnauzer; numer FCI: 181.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('sznaucer-sredni', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Schnauzer; numer FCI: 182.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('norfolk-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Norfolk Terrier; numer FCI: 272.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('lakeland-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Lakeland Terrier; numer FCI: 70.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('irish-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Irish Terrier; numer FCI: 139.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('kerry-blue-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Kerry Blue Terrier; numer FCI: 3.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('welsh-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Welsh Terrier; numer FCI: 78.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('australian-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Australian Terrier; numer FCI: 8.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bedlington-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Bedlington Terrier; numer FCI: 9.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('dandie-dinmont-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Dandie Dinmont Terrier; numer FCI: 168.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('border-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Border Terrier; numer FCI: 10.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('terier-czeski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Cesky Terrier; numer FCI: 246.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('sealyham-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Sealyham Terrier; numer FCI: 74.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('skye-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Skye Terrier; numer FCI: 75.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('parson-russell-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w źródle: Parson Russell Terrier; numer FCI: 339.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT b.id, r.organization_code, r.organization_name, r.recognized, r.recognition_status, r.note, r.source_url, r.verified_at
FROM batch_recognitions r
JOIN breeds b ON b.slug = r.slug
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('kuvasz'),
  ('hovawart'),
  ('duzy-szwajcarski-pies-pasterski'),
  ('entlebucher'),
  ('appenzeller'),
  ('mastif-angielski'),
  ('mastino-napoletano'),
  ('mastif-tybetanski'),
  ('pinczer-niemiecki'),
  ('affenpinscher'),
  ('sznaucer-olbrzym'),
  ('sznaucer-sredni'),
  ('norfolk-terrier'),
  ('lakeland-terrier'),
  ('irish-terrier'),
  ('kerry-blue-terrier'),
  ('welsh-terrier'),
  ('australian-terrier'),
  ('bedlington-terrier'),
  ('dandie-dinmont-terrier'),
  ('border-terrier'),
  ('terier-czeski'),
  ('sealyham-terrier'),
  ('skye-terrier'),
  ('parson-russell-terrier')
),
orgs(organization_code, organization_name) AS (
  VALUES
  ('AKC', 'American Kennel Club'),
  ('KC', 'The Royal Kennel Club'),
  ('UKC', 'United Kennel Club')
)
INSERT INTO breed_registry_recognitions (
  breed_id, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at
)
SELECT
  b.id,
  o.organization_code,
  o.organization_name,
  0,
  'needs_verification',
  'Status ' || o.organization_code || ' wymaga osobnej weryfikacji w oficjalnym źródle organizacji.',
  NULL,
  NULL
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN orgs o
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;
-- END FCI dog breeds batch 4
