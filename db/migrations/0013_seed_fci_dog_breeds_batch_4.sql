PRAGMA foreign_keys = ON;

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
