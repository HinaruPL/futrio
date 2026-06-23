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
