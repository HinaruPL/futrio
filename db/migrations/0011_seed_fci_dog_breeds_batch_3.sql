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
  ('Petit Basset Griffon Vendeen', 'petit-basset-griffon-vendeen', 'Petit Basset Griffon Vend?en', '67', 'France', 'wesoly, glosny i zywiolowy pies gonczy o szorstkiej siersci', 'Petit Basset Griffon Vendeen rozwijal sie jako maly pies gonczy pracujacy w terenie zaro?ni?tym i trudnym dla wiekszych ras. Do dzis laczy odwage, temperament i duza potrzebe zajecia, dlatego nuda szybko odbija sie na codziennym zachowaniu.', 'PBGV laczy niewielki wzrost z bardzo duza determinacja i glosna praca w terenie.', 11, 18, 34, 38, 12, 14, 'high', 'medium', 'medium', 4, 3, 550, 850),
  ('Gonczy polski', 'gonczy-polski', 'Polish Hunting Dog', '354', 'Poland', 'zrownowazony, wytrzymaly i chetny do pracy pies gonczy z polskim rodowodem', 'Gonczy polski byl odtwarzany i rozwijany jako pies mysliwski zdolny do pracy w roznych warunkach terenowych. Rasa laczy przywiazanie do czlowieka z duza samodzielnoscia w terenie, wiec potrzebuje sensownej aktywnosci i spokojnego prowadzenia.', 'To jedna z ras szczegolnie waznych dla wspolczesnej polskiej kynologii.', 20, 32, 50, 59, 12, 14, 'high', 'low', 'medium', 4, 3, 850, 1300),
  ('Bearded Collie', 'bearded-collie', 'Bearded Collie', '271', 'Great Britain', 'pogodny, ruchliwy i kudlaty pies pasterski mocno nastawiony na relacje', 'Bearded Collie rozwijal sie jako zywy pies pasterski pracujacy blisko stada i czlowieka. Historia rasy tlumaczy jego ruchliwosc, towarzyskosc oraz to, ze najlepiej czuje sie tam, gdzie ma zadania i kontakt z domownikami.', 'Bearded Collie potrafi laczyc bardzo wesole usposobienie z imponujaca wytrzymaloscia w ruchu.', 18, 28, 51, 56, 12, 14, 'high', 'high', 'medium', 5, 3, 850, 1300),
  ('Beauceron', 'beauceron', 'Beauceron', '44', 'France', 'silny, czujny i bardzo uzytkowy pies pasterski o mocnym charakterze', 'Beauceron byl rozwijany jako wszechstronny pies pasterski i strozujacy, zdolny do samodzielnej pracy. Dzis nadal potrzebuje opiekuna, ktory lubi szkolenie, strukture i odpowiedzialna prace z duzym psem.', 'Beauceron czesto zwraca uwage charakterystycznymi dodatkowymi pazurami na tylnych konczynach.', 30, 45, 61, 70, 10, 12, 'high', 'low', 'hard', 4, 2, 1300, 1850),
  ('Briard', 'briard', 'Briard', '113', 'France', 'duzy, wrazliwy i bardzo zaangazowany pies pasterski o obfitej siersci', 'Briard laczyl w pracy funkcje pasterskie i strozujace, dlatego potrzebuje relacji, zajecia i spokojnego przewodnika. Wspolczesny briard czesto mocno przywiazuje sie do domu, ale jego temperament nadal wymaga dobrego prowadzenia.', 'Briard laczy efektowna szate z duza sprawnoscia i checia pracy z czlowiekiem.', 25, 40, 56, 68, 10, 12, 'high', 'high', 'medium', 5, 2, 1100, 1700),
  ('Bouvier des Flandres', 'bouvier-des-flandres', 'Bouvier des Flandres', '191', 'Belgium/France', 'mocny, opanowany i solidny pies pracujacy o szorstkiej szacie', 'Bouvier des Flandres rozwijal sie jako wszechstronny pies gospodarski, wykorzystywany do pilnowania i pracy przy zwierzetach. Historia rasy wyjasnia jego spokojna pewnosc siebie, sile i potrzebe stabilnego prowadzenia.', 'Bouvier des Flandres wyglada masywnie, ale dobrze prowadzony potrafi byc bardzo sprawny i zwinny.', 27, 40, 59, 68, 10, 12, 'medium', 'high', 'medium', 4, 2, 1100, 1700),
  ('Schipperke', 'schipperke', 'Schipperke', '83', 'Belgium', 'maly, czujny i bardzo energiczny pies o duzej osobowosci', 'Schipperke rozwijal sie jako niewielki pies czuwajacy i towarzysz pracujacy przy gospodarstwach oraz lodziach. To tlumaczy jego czujnosc, temperament i potrzebe codziennego zajecia mimo niewielkich rozmiarow.', 'Schipperke bywa niewielki, ale temperamentem potrafi przypominac duzo wiekszego psa struzujacego.', 5, 9, 25, 33, 13, 15, 'medium', 'medium', 'medium', 4, 4, 280, 480),
  ('Eurasier', 'eurasier', 'Eurasier', '291', 'Germany', 'spokojny, rodzinny i zrownowazony pies szpicowaty o miekkim kontakcie z domem', 'Eurasier to stosunkowo mloda rasa rozwijana z mysla o polaczeniu rodzinnego charakteru z typem psa szpicowatego. W praktyce zwykle najlepiej czuje sie w spokojnym domu, gdzie ma przewidywalna rutyna i bliski kontakt z ludzmi.', 'Eurasier czesto zachowuje pewna powsciagliwosc wobec obcych przy duzym przywiazaniu do swojego domu.', 18, 32, 48, 60, 12, 14, 'medium', 'medium', 'medium', 5, 3, 780, 1250),
  ('Akita amerykanska', 'akita-amerykanska', 'American Akita', '344', 'United States of America', 'duzy, dumny i niezalezny pies o mocnej sylwetce oraz silnym instynkcie strazniczym', 'American Akita rozwijala sie jako duzy pies o mocnej budowie, odwaznym charakterze i duzej samodzielnosci. Wspolczesnie wymaga odpowiedzialnego opiekuna, ktory rozumie znaczenie socjalizacji, kontroli emocji i bezpiecznego zarzadzania otoczeniem.', 'Akita amerykanska potrafi laczyc spokoj w domu z bardzo zdecydowana postawa w nowych sytuacjach.', 32, 59, 61, 71, 10, 13, 'medium', 'medium', 'hard', 3, 2, 1300, 2200),
  ('Szpic finski', 'szpic-finski', 'Finnish Spitz', '49', 'Finland', 'lekki, zywy i bardzo czujny pies mysliwski o lisiej sylwetce', 'Szpic finski byl rozwijany jako pies mysliwski pracujacy glownie glosem i czujnoscia. Do dzis bywa ruchliwy, reaktywny na bodzce i potrzebuje opiekuna, ktory polubi aktywne zycie z psem szpicowatym.', 'Rasa jest znana z bardzo wyraznej wokalizacji i czujnosci na ruch w otoczeniu.', 10, 14, 39, 50, 12, 14, 'high', 'medium', 'medium', 4, 4, 480, 780),
  ('Finski lapphund', 'finski-lapphund', 'Finnish Lapphund', '189', 'Finland', 'towarzyski, odporny i rodzinny pies polnocny o gestej siersci', 'Finski lapphund wywodzi sie z psow pracujacych przy reniferach w trudnych warunkach klimatycznych. Dzis czesto jest psem rodzinnym, ale jego pochodzenie nadal widac w odpornosci, czujnosci i potrzebie sensownego ruchu.', 'Mimo polnocnego rodowodu finski lapphund czesto bardzo dobrze laczy aktywnosc z lagodnym charakterem domowym.', 15, 24, 41, 52, 12, 14, 'medium', 'medium', 'easy', 5, 3, 650, 1050),
  ('Lagotto Romagnolo', 'lagotto-romagnolo', 'Lagotto Romagnolo', '298', 'Italy', 'inteligentny, wesoly i chetny do pracy pies o kreconej siersci', 'Lagotto Romagnolo wywodzi sie z wloskich psow pracujacych przy wodzie, a pozniej takze przy wyszukiwaniu trufli. Historia rasy dobrze tlumaczy jego chec wspolpracy, nosa do pracy oraz potrzebe zajecia glowa.', 'Lagotto jest szeroko kojarzony z poszukiwaniem trufli i praca nosem.', 11, 16, 41, 48, 13, 15, 'medium', 'high', 'easy', 5, 4, 500, 820),
  ('Portugalski pies wodny', 'portugalski-pies-wodny', 'Portuguese Water Dog', '37', 'Portugal', 'energiczny, bystry i bardzo chetny do wspolpracy pies pracujacy przy wodzie', 'Portugalski pies wodny byl rozwijany do pracy przy lodziach i w srodowisku wodnym, gdzie liczyla sie wytrzymalosc oraz kontakt z czlowiekiem. Dzis nadal potrzebuje ruchu, szkolenia i rozsadnego zajecia, a nie tylko ozdobnej roli.', 'To rasa silnie kojarzona z praca w wodzie, aportowaniem i aktywnym stylem zycia.', 16, 27, 43, 57, 11, 13, 'high', 'high', 'medium', 5, 3, 720, 1200),
  ('Seter irlandzki', 'seter-irlandzki', 'Irish Red Setter', '120', 'Ireland', 'elegancki, bardzo ruchliwy i pogodny pies mysliwski do aktywnego domu', 'Seter irlandzki byl rozwijany jako pies polowy o szybkim ruchu i duzej pasji pracy z nosem oraz wzrokiem. W codziennym zyciu potrzebuje ruchu, nauki i opiekuna, ktory nie oczekuje od niego stalego spokoju bez przygotowania.', 'Seter irlandzki zwraca uwage efektowna czerwona szata i lekkim stylem ruchu.', 24, 32, 55, 67, 11, 13, 'high', 'medium', 'easy', 5, 2, 1000, 1500),
  ('Seter angielski', 'seter-angielski', 'English Setter', '2', 'Great Britain', 'lagodny, elegancki i bardzo ruchliwy pies mysliwski o miekkiej szacie', 'Seter angielski rozwijal sie jako pies polowy pracujacy szeroko i chetnie we wspolpracy z przewodnikiem. W domu zwykle jest lagodny, ale nadal potrzebuje duzej dawki ruchu i zajecia odpowiadajacego jego rodowodowi.', 'Seter angielski jest ceniony za plynny ruch i charakterystyczne nakrapianie siersci.', 24, 32, 61, 68, 11, 13, 'high', 'medium', 'easy', 5, 2, 1000, 1500),
  ('Seter szkocki gordon', 'seter-szkocki-gordon', 'Gordon Setter', '6', 'Great Britain', 'mocny, wierny i pracowity seter o ciemnej eleganckiej szacie', 'Gordon Setter byl rozwijany jako wytrzymaly pies mysliwski zdolny do pracy w trudniejszych warunkach i terenie. Ta historia tlumaczy jego wytrzymalosc, potrzebe ruchu i nieco bardziej powazny charakter niz u niektorych innych seterow.', 'Czarno-podpalane umaszczenie gordona jest jednym z najbardziej rozpoznawalnych wsrod seterow.', 25, 36, 58, 66, 10, 12, 'high', 'medium', 'medium', 4, 2, 1050, 1600),
  ('Pointer', 'pointer', 'Pointer', '1', 'Great Britain', 'szybki, atletyczny i bardzo czuly na wspolprace pies mysliwski', 'Pointer od dawna byl rozwijany jako pies polowy o duzej szybkosci, pasji i eleganckim stylu pracy. W praktyce oznacza to potrzebe ruchu, szkolenia i opiekuna, ktory rozumie psa o sportowym temperamencie.', 'Postawa pointera przy wystawieniu zwierzyny jest jedna z najbardziej ikonicznych sylwetek w kynologii uzytkowej.', 20, 34, 55, 69, 12, 14, 'high', 'low', 'easy', 5, 2, 900, 1500),
  ('Coton de Tulear', 'coton-de-tulear', 'Coton de Tul?ar', '283', 'Madagascar', 'maly, wesoly i bardzo kontaktowy pies do bliskiego zycia rodzinnego', 'Coton de Tulear byl rozwijany jako pies do towarzystwa ceniony za lagodny charakter i przywiazanie do ludzi. Wspolczesnie dobrze odnajduje sie w mieszkaniu, ale nadal potrzebuje relacji, pielegnacji oraz codziennej uwagi.', 'Nazwa rasy nawiazuje do bawelnianej w dotyku siersci, z ktorej coton jest szczegolnie znany.', 4, 7, 23, 28, 14, 16, 'medium', 'medium', 'easy', 5, 5, 220, 420),
  ('Lhasa Apso', 'lhasa-apso', 'Lhasa Apso', '227', 'Tibet', 'niewielki, pewny siebie i czujny pies o dlugiej szacie', 'Lhasa Apso ma korzenie jako pies czuwajacy i do towarzystwa w kulturze tybetanskiej. Dzis czesto mieszka w domach i mieszkaniach, ale nadal zachowuje niezaleznosc, czujnosc i potrzebe spokojnego szacunku dla swoich granic.', 'Mimo malego wzrostu lhasa apso czesto sprawia wrazenie psa bardzo pewnego swojej roli w domu.', 5, 8, 25, 28, 12, 15, 'low', 'high', 'medium', 4, 5, 240, 420),
  ('Pekinczyk', 'pekinczyk', 'Pekingese', '207', 'China', 'niewielki, dumny i spokojny pies do towarzystwa o charakterystycznej sylwetce', 'Pekinczyk byl przez wieki kojarzony z psem dworskim i do towarzystwa, cenionym za wyglad oraz niezalezny charakter. W codziennym zyciu potrzebuje spokojnego domu, uwaznej pielegnacji i opiekuna, ktory szanuje jego komfort oraz ograniczenia zdrowotne.', 'Pekinczyk ma bardzo charakterystyczny, niemal lwi wyraz glowy rozpoznawalny od razu.', 3, 6, 15, 23, 12, 14, 'low', 'high', 'medium', 3, 5, 180, 340),
  ('Mops', 'mops', 'Pug', '253', 'China', 'towarzyski, pogodny i bardzo skupiony na ludziach pies do bliskiego zycia domowego', 'Mops od dawna rozwijal sie jako pies do towarzystwa ceniony za bliskosc z czlowiekiem i kompaktowy rozmiar. Wspolczesnie nadal mocno szuka kontaktu z domownikami, ale wymaga tez rozwaznej kontroli masy ciala, temperatury i oddechu.', 'Mopsy czesto szybko staja sie centrum domowego zycia, bo bardzo lubia byc blisko ludzi.', 6, 8, 25, 33, 12, 15, 'low', 'low', 'medium', 5, 5, 260, 430),
  ('Cocker spaniel amerykanski', 'cocker-spaniel-amerykanski', 'American Cocker Spaniel', '167', 'United States of America', 'wesoly, kontaktowy i elegancki spaniel o obfitej szacie', 'Cocker spaniel amerykanski byl rozwijany jako mniejszy spaniel mysliwski, a z czasem stal sie takze popularnym psem rodzinnym. Wspolczesnie wymaga pielegnacji, lagodnego szkolenia i ruchu dostosowanego do wieku oraz zdrowia.', 'To jedna z ras spanieli najmocniej kojarzonych z obfita ozdobna szata i wyrazista glowa.', 10, 15, 34, 39, 12, 14, 'medium', 'high', 'easy', 5, 4, 420, 720),
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
  ('petit-basset-griffon-vendeen', 'Petit Basset Griffon Vendeen rozwijal sie jako maly pies gonczy pracujacy w terenie zaro?ni?tym i trudnym dla wiekszych ras. Do dzis laczy odwage, temperament i duza potrzebe zajecia, dlatego nuda szybko odbija sie na codziennym zachowaniu.', 'PBGV laczy niewielki wzrost z bardzo duza determinacja i glosna praca w terenie.'),
  ('gonczy-polski', 'Gonczy polski byl odtwarzany i rozwijany jako pies mysliwski zdolny do pracy w roznych warunkach terenowych. Rasa laczy przywiazanie do czlowieka z duza samodzielnoscia w terenie, wiec potrzebuje sensownej aktywnosci i spokojnego prowadzenia.', 'To jedna z ras szczegolnie waznych dla wspolczesnej polskiej kynologii.'),
  ('bearded-collie', 'Bearded Collie rozwijal sie jako zywy pies pasterski pracujacy blisko stada i czlowieka. Historia rasy tlumaczy jego ruchliwosc, towarzyskosc oraz to, ze najlepiej czuje sie tam, gdzie ma zadania i kontakt z domownikami.', 'Bearded Collie potrafi laczyc bardzo wesole usposobienie z imponujaca wytrzymaloscia w ruchu.'),
  ('beauceron', 'Beauceron byl rozwijany jako wszechstronny pies pasterski i strozujacy, zdolny do samodzielnej pracy. Dzis nadal potrzebuje opiekuna, ktory lubi szkolenie, strukture i odpowiedzialna prace z duzym psem.', 'Beauceron czesto zwraca uwage charakterystycznymi dodatkowymi pazurami na tylnych konczynach.'),
  ('briard', 'Briard laczyl w pracy funkcje pasterskie i strozujace, dlatego potrzebuje relacji, zajecia i spokojnego przewodnika. Wspolczesny briard czesto mocno przywiazuje sie do domu, ale jego temperament nadal wymaga dobrego prowadzenia.', 'Briard laczy efektowna szate z duza sprawnoscia i checia pracy z czlowiekiem.'),
  ('bouvier-des-flandres', 'Bouvier des Flandres rozwijal sie jako wszechstronny pies gospodarski, wykorzystywany do pilnowania i pracy przy zwierzetach. Historia rasy wyjasnia jego spokojna pewnosc siebie, sile i potrzebe stabilnego prowadzenia.', 'Bouvier des Flandres wyglada masywnie, ale dobrze prowadzony potrafi byc bardzo sprawny i zwinny.'),
  ('schipperke', 'Schipperke rozwijal sie jako niewielki pies czuwajacy i towarzysz pracujacy przy gospodarstwach oraz lodziach. To tlumaczy jego czujnosc, temperament i potrzebe codziennego zajecia mimo niewielkich rozmiarow.', 'Schipperke bywa niewielki, ale temperamentem potrafi przypominac duzo wiekszego psa struzujacego.'),
  ('eurasier', 'Eurasier to stosunkowo mloda rasa rozwijana z mysla o polaczeniu rodzinnego charakteru z typem psa szpicowatego. W praktyce zwykle najlepiej czuje sie w spokojnym domu, gdzie ma przewidywalna rutyna i bliski kontakt z ludzmi.', 'Eurasier czesto zachowuje pewna powsciagliwosc wobec obcych przy duzym przywiazaniu do swojego domu.'),
  ('akita-amerykanska', 'American Akita rozwijala sie jako duzy pies o mocnej budowie, odwaznym charakterze i duzej samodzielnosci. Wspolczesnie wymaga odpowiedzialnego opiekuna, ktory rozumie znaczenie socjalizacji, kontroli emocji i bezpiecznego zarzadzania otoczeniem.', 'Akita amerykanska potrafi laczyc spokoj w domu z bardzo zdecydowana postawa w nowych sytuacjach.'),
  ('szpic-finski', 'Szpic finski byl rozwijany jako pies mysliwski pracujacy glownie glosem i czujnoscia. Do dzis bywa ruchliwy, reaktywny na bodzce i potrzebuje opiekuna, ktory polubi aktywne zycie z psem szpicowatym.', 'Rasa jest znana z bardzo wyraznej wokalizacji i czujnosci na ruch w otoczeniu.'),
  ('finski-lapphund', 'Finski lapphund wywodzi sie z psow pracujacych przy reniferach w trudnych warunkach klimatycznych. Dzis czesto jest psem rodzinnym, ale jego pochodzenie nadal widac w odpornosci, czujnosci i potrzebie sensownego ruchu.', 'Mimo polnocnego rodowodu finski lapphund czesto bardzo dobrze laczy aktywnosc z lagodnym charakterem domowym.'),
  ('lagotto-romagnolo', 'Lagotto Romagnolo wywodzi sie z wloskich psow pracujacych przy wodzie, a pozniej takze przy wyszukiwaniu trufli. Historia rasy dobrze tlumaczy jego chec wspolpracy, nosa do pracy oraz potrzebe zajecia glowa.', 'Lagotto jest szeroko kojarzony z poszukiwaniem trufli i praca nosem.'),
  ('portugalski-pies-wodny', 'Portugalski pies wodny byl rozwijany do pracy przy lodziach i w srodowisku wodnym, gdzie liczyla sie wytrzymalosc oraz kontakt z czlowiekiem. Dzis nadal potrzebuje ruchu, szkolenia i rozsadnego zajecia, a nie tylko ozdobnej roli.', 'To rasa silnie kojarzona z praca w wodzie, aportowaniem i aktywnym stylem zycia.'),
  ('seter-irlandzki', 'Seter irlandzki byl rozwijany jako pies polowy o szybkim ruchu i duzej pasji pracy z nosem oraz wzrokiem. W codziennym zyciu potrzebuje ruchu, nauki i opiekuna, ktory nie oczekuje od niego stalego spokoju bez przygotowania.', 'Seter irlandzki zwraca uwage efektowna czerwona szata i lekkim stylem ruchu.'),
  ('seter-angielski', 'Seter angielski rozwijal sie jako pies polowy pracujacy szeroko i chetnie we wspolpracy z przewodnikiem. W domu zwykle jest lagodny, ale nadal potrzebuje duzej dawki ruchu i zajecia odpowiadajacego jego rodowodowi.', 'Seter angielski jest ceniony za plynny ruch i charakterystyczne nakrapianie siersci.'),
  ('seter-szkocki-gordon', 'Gordon Setter byl rozwijany jako wytrzymaly pies mysliwski zdolny do pracy w trudniejszych warunkach i terenie. Ta historia tlumaczy jego wytrzymalosc, potrzebe ruchu i nieco bardziej powazny charakter niz u niektorych innych seterow.', 'Czarno-podpalane umaszczenie gordona jest jednym z najbardziej rozpoznawalnych wsrod seterow.'),
  ('pointer', 'Pointer od dawna byl rozwijany jako pies polowy o duzej szybkosci, pasji i eleganckim stylu pracy. W praktyce oznacza to potrzebe ruchu, szkolenia i opiekuna, ktory rozumie psa o sportowym temperamencie.', 'Postawa pointera przy wystawieniu zwierzyny jest jedna z najbardziej ikonicznych sylwetek w kynologii uzytkowej.'),
  ('coton-de-tulear', 'Coton de Tulear byl rozwijany jako pies do towarzystwa ceniony za lagodny charakter i przywiazanie do ludzi. Wspolczesnie dobrze odnajduje sie w mieszkaniu, ale nadal potrzebuje relacji, pielegnacji oraz codziennej uwagi.', 'Nazwa rasy nawiazuje do bawelnianej w dotyku siersci, z ktorej coton jest szczegolnie znany.'),
  ('lhasa-apso', 'Lhasa Apso ma korzenie jako pies czuwajacy i do towarzystwa w kulturze tybetanskiej. Dzis czesto mieszka w domach i mieszkaniach, ale nadal zachowuje niezaleznosc, czujnosc i potrzebe spokojnego szacunku dla swoich granic.', 'Mimo malego wzrostu lhasa apso czesto sprawia wrazenie psa bardzo pewnego swojej roli w domu.'),
  ('pekinczyk', 'Pekinczyk byl przez wieki kojarzony z psem dworskim i do towarzystwa, cenionym za wyglad oraz niezalezny charakter. W codziennym zyciu potrzebuje spokojnego domu, uwaznej pielegnacji i opiekuna, ktory szanuje jego komfort oraz ograniczenia zdrowotne.', 'Pekinczyk ma bardzo charakterystyczny, niemal lwi wyraz glowy rozpoznawalny od razu.'),
  ('mops', 'Mops od dawna rozwijal sie jako pies do towarzystwa ceniony za bliskosc z czlowiekiem i kompaktowy rozmiar. Wspolczesnie nadal mocno szuka kontaktu z domownikami, ale wymaga tez rozwaznej kontroli masy ciala, temperatury i oddechu.', 'Mopsy czesto szybko staja sie centrum domowego zycia, bo bardzo lubia byc blisko ludzi.'),
  ('cocker-spaniel-amerykanski', 'Cocker spaniel amerykanski byl rozwijany jako mniejszy spaniel mysliwski, a z czasem stal sie takze popularnym psem rodzinnym. Wspolczesnie wymaga pielegnacji, lagodnego szkolenia i ruchu dostosowanego do wieku oraz zdrowia.', 'To jedna z ras spanieli najmocniej kojarzonych z obfita ozdobna szata i wyrazista glowa.'),
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
  ('basset-hound', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Basset Hound; numer FCI: 163.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bloodhound', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Bloodhound; numer FCI: 84.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('petit-basset-griffon-vendeen', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Petit Basset Griffon Vend?en; numer FCI: 67.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('gonczy-polski', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Polish Hunting Dog; numer FCI: 354.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bearded-collie', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Bearded Collie; numer FCI: 271.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('beauceron', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Beauceron; numer FCI: 44.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('briard', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Briard; numer FCI: 113.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bouvier-des-flandres', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Bouvier des Flandres; numer FCI: 191.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('schipperke', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Schipperke; numer FCI: 83.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('eurasier', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Eurasier; numer FCI: 291.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('akita-amerykanska', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: American Akita; numer FCI: 344.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('szpic-finski', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Finnish Spitz; numer FCI: 49.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('finski-lapphund', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Finnish Lapphund; numer FCI: 189.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('lagotto-romagnolo', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Lagotto Romagnolo; numer FCI: 298.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('portugalski-pies-wodny', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Portuguese Water Dog; numer FCI: 37.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('seter-irlandzki', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Irish Red Setter; numer FCI: 120.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('seter-angielski', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: English Setter; numer FCI: 2.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('seter-szkocki-gordon', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Gordon Setter; numer FCI: 6.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('pointer', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Pointer; numer FCI: 1.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('coton-de-tulear', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Coton de Tul?ar; numer FCI: 283.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('lhasa-apso', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Lhasa Apso; numer FCI: 227.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('pekinczyk', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Pekingese; numer FCI: 207.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('mops', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Pug; numer FCI: 253.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('cocker-spaniel-amerykanski', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: American Cocker Spaniel; numer FCI: 167.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('springer-spaniel-walijski', 'FCI', 'F?d?ration Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w ?r?dle: Welsh Springer Spaniel; numer FCI: 126.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24')
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
