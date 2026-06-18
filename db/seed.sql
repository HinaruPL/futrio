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
