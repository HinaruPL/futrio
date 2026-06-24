PRAGMA foreign_keys = ON;

-- FCI dog breeds pipeline: Batch 5 (2026-06-24).
-- Dodaje kolejne 25 ras psow oraz komplet danych wspierajacych strony ras.

WITH batch_breeds(
  name, slug, fci_name, fci_number, origin_country,
  traits, history_note, fun_fact,
  weight_min_kg, weight_max_kg, height_min_cm, height_max_cm,
  life_expectancy_min_years, life_expectancy_max_years,
  activity_level, grooming_level, training_difficulty,
  family_friendly_score, apartment_score, daily_calories_min, daily_calories_max
) AS (
  VALUES
  ('Terrier brazylijski', 'terrier-brazylijski', 'Brazilian Terrier', '341', 'Brazil', 'zwinny, pewny siebie i bardzo zywy terier o duzej czujnosci', 'Terrier brazylijski rozwijal sie jako niewielki pies uzytkowy i towarzysz, ktory mial laczyc szybkie reakcje z odpornoscia. Dzis najlepiej odnajduje sie przy aktywnym opiekunie, ktory zapewnia mu ruch, kontakt i jasne zasady.', 'Terrier brazylijski jest jedna z nielicznych ras psow oficjalnie wyhodowanych w Brazylii.', 7, 10, 33, 40, 12, 14, 'high', 'low', 'medium', 4, 4, 320, 520),
  ('Niemiecki terier mysliwski', 'niemiecki-terier-mysliwski', 'German Hunting Terrier', '103', 'Germany', 'odwazny, twardy i bardzo pracowity pies mysliwski o mocnym temperamencie', 'Niemiecki terier mysliwski byl tworzony jako pies do wymagajacej pracy lowieckiej, dlatego zwykle ma duzy temperament, chec dzialania i silny instynkt. Potrzebuje opiekuna, ktory rozumie psy uzytkowe i potrafi laczyc ruch z nauka samokontroli.', 'Jagdterrier powstal jako rasa nastawiona przede wszystkim na funkcje uzytkowa, a nie efektowny wyglad.', 7, 10, 33, 40, 12, 14, 'high', 'low', 'hard', 3, 2, 330, 540),
  ('Fox Terrier krotkowlosy', 'fox-terrier-krotkowlosy', 'Fox Terrier (Smooth)', '12', 'Great Britain', 'szybki, bystry i zywy terier o duzej gotowosci do eksploracji', 'Fox Terrier krotkowlosy rozwijal sie jako terier roboczy do pracy w terenie. Do dzis zachowuje czujnosc, ruchliwosc i potrzebe zajecia, dlatego najlepiej sluzy mu aktywna codziennosc oraz spokojne, konsekwentne prowadzenie.', 'Smooth Fox Terrier jest blisko spokrewniony z odmiana szorstkowlosa, ale rozni sie typem szaty i nieco innym wyrazem.', 7, 9, 35, 40, 12, 15, 'high', 'low', 'medium', 4, 4, 300, 480),
  ('Manchester Terrier', 'manchester-terrier', 'Manchester Terrier', '71', 'Great Britain', 'elegancki, szybki i czujny pies o lekkiej sylwetce i duzej energii', 'Manchester Terrier laczy zrecznosc mniejszego psa z temperamentem sprawnego teriera. W codziennym zyciu zwykle potrzebuje kontaktu z czlowiekiem, ruchu i przewidywalnej rutyny, bo szybko reaguje na otoczenie.', 'Nazwa rasy nawiazuje do Manchesteru, gdzie typ ten byl szczegolnie ceniony w XIX wieku.', 6, 10, 38, 41, 14, 16, 'high', 'low', 'medium', 4, 5, 260, 420),
  ('Glen of Imaal Terrier', 'glen-of-imaal-terrier', 'Irish Glen of Imaal Terrier', '302', 'Ireland', 'niski, mocny i opanowany terier o duzej sile jak na swoje rozmiary', 'Glen of Imaal Terrier wywodzi sie z irlandzkich psow roboczych, ktore mialy byc wytrzymale i praktyczne w codziennym uzyciu. To rasa zwykle spokojniejsza od wielu innych terierow, ale nadal potrzebuje ruchu, pracy i jasnych zasad.', 'To jedna z najrzadszych irlandzkich ras terierow uznanych przez FCI.', 14, 18, 32, 36, 12, 14, 'medium', 'medium', 'medium', 4, 4, 480, 760),
  ('Irish Soft Coated Wheaten Terrier', 'irish-soft-coated-wheaten-terrier', 'Irish Soft Coated Wheaten Terrier', '40', 'Ireland', 'towarzyski, energiczny i pogodny terier o miekkiej pszenicznej szacie', 'Irish Soft Coated Wheaten Terrier przez lata pracowal jako wszechstronny pies gospodarski. Dzis laczy chec bliskiego kontaktu z duza potrzeba aktywnosci, dlatego potrzebuje relacji, szkolenia i regularnej pielegnacji.', 'Pszeniczny odcien szaty tej rasy jest jedna z jej najbardziej charakterystycznych cech.', 14, 20, 43, 49, 12, 14, 'high', 'high', 'medium', 5, 3, 560, 900),
  ('Terier japonski', 'terier-japonski', 'Japanese Terrier', '259', 'Japan', 'lekki, zywy i bardzo kontaktowy maly pies o szybkim sposobie reagowania', 'Terier japonski byl rozwijany jako niewielki pies do towarzystwa i codziennego zycia blisko ludzi. Zwykle najlepiej funkcjonuje tam, gdzie ma kontakt, przewidywalnosc i spokojne wychowanie bez nadmiaru presji.', 'Japanese Terrier pozostaje rasa malo znana poza Japonia, mimo oficjalnego uznania przez FCI.', 2, 5, 30, 33, 12, 14, 'medium', 'low', 'easy', 4, 5, 150, 280),
  ('Miniaturowy bull terrier', 'miniaturowy-bull-terrier', 'Miniature Bull Terrier', '359', 'Great Britain', 'silny, odwazny i zabawny pies o zwartej sylwetce oraz duzej osobowosci', 'Miniaturowy bull terrier zachowuje wiele cech wiekszego bull terriera, ale w bardziej kompaktowym formacie. Potrzebuje sensownego ruchu, zabawy, kontroli pobudzenia i opiekuna, ktory lubi psa z charakterem.', 'Charakterystyczny profil glowy sprawia, ze miniature bull terrier jest bardzo latwy do rozpoznania.', 9, 16, 25, 36, 11, 13, 'high', 'low', 'medium', 4, 4, 380, 680),
  ('Australian Silky Terrier', 'australian-silky-terrier', 'Australian Silky Terrier', '236', 'Australia', 'maly, zywy i odwazny pies do towarzystwa o jedwabistej dlugiej szacie', 'Australian Silky Terrier laczy cechy malego psa rodzinnego z temperamentem aktywnego teriera. W praktyce potrzebuje kontaktu, krotkich treningow i pielegnacji, a jego rozmiar nie oznacza calkowicie bezproblemowej obslugi.', 'Silky Terrier jest blisko spokrewniony z yorkshire terrierem, ale ma wlasny australijski rodowod hodowlany.', 3, 5, 23, 26, 12, 15, 'medium', 'medium', 'easy', 4, 5, 160, 290),
  ('English Toy Terrier', 'english-toy-terrier', 'English Toy Terrier (Black & Tan)', '13', 'Great Britain', 'bardzo maly, czujny i elegancki pies o lekkiej budowie oraz mocnej wiezi z opiekunem', 'English Toy Terrier najlepiej odnajduje sie w domu, gdzie laczy bliski kontakt z opiekunem z codziennym ruchem i nauka spokojnego funkcjonowania. To rasa delikatna gabarytowo, ale zwykle bardzo zywa i uwazna.', 'Czarno-podpalane umaszczenie jest klasycznym znakiem rozpoznawczym tej rasy.', 2, 4, 25, 30, 12, 14, 'medium', 'low', 'easy', 4, 5, 150, 260),
  ('Bolonczyk', 'bolonczyk', 'Bolognese', '196', 'Italy', 'maly, lagodny i bardzo kontaktowy pies do towarzystwa o bialej szacie', 'Bolonczyk od dawna jest kojarzony z psami do bliskiego zycia z czlowiekiem. W praktyce najlepiej czuje sie w domu z przewidywalna rutyna, lagodnym wychowaniem i regularna pielegnacja siersci.', 'Bolognese nalezy do rodziny bichonow i przez wieki byl obecny na europejskich dworach.', 2, 4, 25, 30, 12, 15, 'medium', 'high', 'easy', 5, 5, 150, 260),
  ('Lwi piesek', 'lwi-piesek', 'Little Lion Dog', '233', 'France', 'niewielki, pogodny i bliski rodzinie pies o efektownej szacie', 'Lwi piesek historycznie byl ceniony jako pies do towarzystwa, ale wspolczesnie nadal potrzebuje czegos wiecej niz ladnego wygladu. Licza sie relacja, regularna pielegnacja i spokojne budowanie dobrych nawykow.', 'Tradycyjne strzyzenie tej rasy nadaje jej sylwetce skojarzenie z malym lwem.', 4, 8, 26, 32, 12, 14, 'medium', 'high', 'easy', 5, 5, 220, 360),
  ('Griffon belge', 'griffon-belge', 'Griffon Belge', '81', 'Belgium', 'maly, czujny i ekspresyjny pies o zywej mimice i mocnym kontakcie z ludzmi', 'Griffon belge nalezy do malej rodziny belgijskich griffonow, ktore wyrosly z psow towarzyszacych i stajennych. W domu potrzebuje bliskiego kontaktu, delikatnego prowadzenia i uwaznosci na emocje psa.', 'Mimika i wyraz pyska griffonow sprawiaja, ze wiele osob zapamietuje je od pierwszego spotkania.', 3, 6, 18, 26, 12, 15, 'medium', 'medium', 'medium', 4, 5, 170, 300),
  ('Griffon bruxellois', 'griffon-bruxellois', 'Griffon Bruxellois', '80', 'Belgium', 'czuly, bystry i bardzo rodzinny pies o charakterystycznej mordce i zywych reakcjach', 'Griffon bruxellois zwykle bardzo mocno przywiazuje sie do swoich ludzi i zle znosi dluga samotnosc. Najlepiej sluzy mu spokojny dom, delikatne szkolenie i opiekun, ktory lubi codzienny kontakt z malym psem.', 'Rasa jest silnie zwiazana z Belgia i z tradycja niewielkich psow do towarzystwa.', 3, 6, 18, 26, 12, 15, 'medium', 'medium', 'medium', 4, 5, 170, 300),
  ('Petit brabancon', 'petit-brabancon', 'Petit Brabancon', '82', 'Belgium', 'maly, pewny siebie i bardzo kontaktowy pies o gladkiej szacie', 'Petit brabancon dzieli pochodzenie z dwiema odmianami griffonow, ale rozni sie typem szaty. W praktyce zwykle potrzebuje bliskosci z czlowiekiem, rutyny i spokojnego wychowania, ktore nie wzmacnia nadmiernej czujnosci.', 'Gladkosiersciowa szata sprawia, ze petit brabancon wyglada nieco inaczej niz jego szorstkowlosi kuzyni.', 3, 6, 18, 26, 12, 15, 'medium', 'low', 'easy', 4, 5, 170, 300),
  ('Grzywacz chinski', 'grzywacz-chinski', 'Chinese Crested Dog', '288', 'China', 'delikatny, zywy i bardzo przywiazany pies do towarzystwa o niezwyklym wygladzie', 'Grzywacz chinski najlepiej funkcjonuje w domu, gdzie opiekun uwzglednia jego potrzeby zwiazane z temperatura, skora i codziennym kontaktem. To rasa czesto bardzo bliska czlowiekowi i wyczulona na atmosfere domu.', 'W rasie wystepuja odmiany hairless i powder puff, co jest rzadkie w jednym standardzie.', 3, 6, 23, 33, 13, 15, 'medium', 'medium', 'easy', 4, 5, 170, 320),
  ('Spaniel tybetanski', 'spaniel-tybetanski', 'Tibetan Spaniel', '231', 'Tibet', 'maly, czujny i niezalezny pies do towarzystwa lubiacy obserwowac otoczenie', 'Spaniel tybetanski przez wieki byl zwiazany z zyciem w klasztorach i blisko ludzi, ale zachowal tez pewna samodzielnosc. W domu potrzebuje relacji, spokoju i rozwaznego podejscia do socjalizacji.', 'Tibetan Spaniel lubi obserwowac otoczenie z podwyzszonych miejsc, co wielu opiekunow szybko zauwaza w domu.', 4, 7, 24, 27, 12, 15, 'medium', 'medium', 'easy', 4, 5, 190, 340),
  ('Terier tybetanski', 'terier-tybetanski', 'Tibetan Terrier', '209', 'Tibet', 'sredniej wielkosci, rodzinny i zywy pies o obfitej szacie i pogodnym usposobieniu', 'Mimo nazwy terier tybetanski nie jest klasycznym terierem roboczym, tylko psem do towarzystwa i zycia blisko czlowieka. Najlepiej radzi sobie tam, gdzie ma kontakt z rodzina, ruch i regularna pielegnacje.', 'Nazwa tej rasy bywa mylaca, bo w rzeczywistosci jej pochodzenie i funkcja byly inne niz u typowych terierow.', 8, 14, 35, 41, 12, 15, 'medium', 'high', 'medium', 5, 4, 320, 580),
  ('King Charles Spaniel', 'king-charles-spaniel', 'King Charles Spaniel', '128', 'Great Britain', 'maly, lagodny i towarzyski spaniel o spokojniejszym usposobieniu', 'King Charles Spaniel jest rasa do bliskiego zycia z ludzmi i zwykle dobrze odnajduje sie w domu, gdzie ma spokoj, kontakt i przewidywalna rutyna. To pies, ktory nie powinien byc zostawiany sam sobie jako jedynie dekoracyjny pupil.', 'Rasa jest zwiazana z brytyjska tradycja dworskich psow do towarzystwa.', 3, 6, 25, 27, 10, 14, 'medium', 'medium', 'easy', 5, 5, 170, 290),
  ('Chin japonski', 'chin-japonski', 'Japanese Chin', '206', 'Japan', 'niewielki, delikatny i bardzo kontaktowy pies o eleganckim ruchu', 'Chin japonski najlepiej odnajduje sie przy opiekunie, ktory ceni spokojny kontakt, lekka aktywnosc i delikatne prowadzenie. To pies czesto wrazliwy na nastroj domu i przywiazany do swoich ludzi.', 'W zachowaniu chin japonski bywa opisywany jako pies o pewnej kociej zrecznosci.', 2, 5, 20, 27, 11, 14, 'medium', 'medium', 'easy', 4, 5, 150, 280),
  ('Russkiy Toy', 'russkiy-toy', 'Russian Toy', '352', 'Russia', 'bardzo maly, zywy i czujny pies do towarzystwa o lekkiej sylwetce', 'Russkiy Toy potrzebuje opiekuna, ktory mimo niewielkich gabarytow traktuje go jak prawdziwego psa z potrzebami ruchu, socjalizacji i odpoczynku. Zwykle dobrze czuje sie w spokojnym domu z duza bliskoscia czlowieka.', 'Russkiy Toy nalezy do najmniejszych ras uznanych przez FCI.', 1, 3, 20, 28, 12, 14, 'medium', 'low', 'easy', 4, 5, 110, 220),
  ('Kromfohrlander', 'kromfohrlander', 'Kromfohrlander', '192', 'Germany', 'rodzinny, pogodny i kontaktowy pies o umiarkowanych potrzebach i dobrej czujnosci', 'Kromfohrlander jest stosunkowo mloda rasa rozwijana glownie jako pies do towarzystwa. W praktyce zwykle potrzebuje relacji, przewidywalnosci i aktywnosci dopasowanej do domu rodzinnego, bez przesadnego pobudzania.', 'Kromfohrlander jest jedna z mlodszych ras oficjalnie uznanych w Niemczech.', 9, 16, 38, 46, 12, 14, 'medium', 'medium', 'medium', 5, 4, 360, 640),
  ('Chesapeake Bay Retriever', 'chesapeake-bay-retriever', 'Chesapeake Bay Retriever', '263', 'United States of America', 'mocny, wytrzymaly i bardzo chetny do pracy retriever o duzej odpornosci', 'Chesapeake Bay Retriever byl rozwijany do pracy w trudnych warunkach wodnych, dlatego do dzis zwykle ma duza wytrzymalosc, samodzielnosc i potrzebe aktywnosci. Najlepiej sluzy mu opiekun, ktory laczy ruch z madrym szkoleniem.', 'Charakterystyczna szata chessie pomaga chronic psa przed zimnem i wilgocia podczas pracy w wodzie.', 25, 36, 53, 66, 10, 13, 'high', 'medium', 'medium', 5, 3, 950, 1600),
  ('Kooikerhondje', 'kooikerhondje', 'Nederlandse Kooikerhondje', '314', 'Netherlands', 'zwinny, wrazliwy i bystry pies o eleganckiej sylwetce i duzej potrzebie wspolpracy', 'Kooikerhondje ma korzenie zwiazane z wabieniem kaczek do specjalnych pulapek, co dobrze tlumaczy jego uwage, zrecznosc i potrzebe pracy z czlowiekiem. Dzis zwykle potrzebuje relacji, ruchu i spokojnego wychowania.', 'Kooikerhondje jest znane z ciemnych fredzli na koncach uszu, nazywanych kolczykami.', 9, 14, 35, 42, 12, 14, 'high', 'medium', 'medium', 5, 4, 360, 620),
  ('Barbet', 'barbet', 'Barbet', '105', 'France', 'towarzyski, wodnolubny i aktywny pies o gestej kreconej szacie', 'Barbet rozwijal sie jako pies wodny do wspolpracy z czlowiekiem, dlatego zwykle dobrze reaguje na szkolenie i potrzebuje codziennej aktywnosci. Wymaga tez regularnej pielegnacji, aby utrzymac szate i skore w dobrej kondycji.', 'Barbet bywa wymieniany wsrod ras historycznie powiazanych z rozwojem innych europejskich psow wodnych.', 17, 28, 52, 65, 12, 14, 'high', 'high', 'medium', 5, 3, 700, 1200)
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
  name || ' to rasa dla opiekunow, ktorzy rozumieja jej codzienne potrzeby. To ' || traits || ', dlatego wymaga ruchu, zywienia i pielegnacji dopasowanych do wieku, zdrowia oraz trybu zycia. Opis Futrio pomaga zaplanowac opieke, ale nie zastepuje rozmowy z hodowca, behawiorysta ani lekarzem weterynarii.',
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
  'Poznaj rase ' || name || ': charakter, potrzeby, zywienie, pielegnacje, zdrowie i orientacyjne koszty utrzymania.',
  name || ' - opis rasy, charakter i koszty utrzymania',
  'published'
FROM batch_breeds
WHERE true
ON CONFLICT(slug) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('terrier-brazylijski'),
  ('niemiecki-terier-mysliwski'),
  ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'),
  ('glen-of-imaal-terrier'),
  ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'),
  ('miniaturowy-bull-terrier'),
  ('australian-silky-terrier'),
  ('english-toy-terrier'),
  ('bolonczyk'),
  ('lwi-piesek'),
  ('griffon-belge'),
  ('griffon-bruxellois'),
  ('petit-brabancon'),
  ('grzywacz-chinski'),
  ('spaniel-tybetanski'),
  ('terier-tybetanski'),
  ('king-charles-spaniel'),
  ('chin-japonski'),
  ('russkiy-toy'),
  ('kromfohrlander'),
  ('chesapeake-bay-retriever'),
  ('kooikerhondje'),
  ('barbet')
),
breed_notes(slug, history_note, fun_fact) AS (
  VALUES
  ('terrier-brazylijski', 'Terrier brazylijski rozwijal sie jako niewielki pies uzytkowy i towarzysz, ktory mial laczyc szybkie reakcje z odpornoscia. Dzis najlepiej odnajduje sie przy aktywnym opiekunie, ktory zapewnia mu ruch, kontakt i jasne zasady.', 'Terrier brazylijski jest jedna z nielicznych ras psow oficjalnie wyhodowanych w Brazylii.'),
  ('niemiecki-terier-mysliwski', 'Niemiecki terier mysliwski byl tworzony jako pies do wymagajacej pracy lowieckiej, dlatego zwykle ma duzy temperament, chec dzialania i silny instynkt. Potrzebuje opiekuna, ktory rozumie psy uzytkowe i potrafi laczyc ruch z nauka samokontroli.', 'Jagdterrier powstal jako rasa nastawiona przede wszystkim na funkcje uzytkowa, a nie efektowny wyglad.'),
  ('fox-terrier-krotkowlosy', 'Fox Terrier krotkowlosy rozwijal sie jako terier roboczy do pracy w terenie. Do dzis zachowuje czujnosc, ruchliwosc i potrzebe zajecia, dlatego najlepiej sluzy mu aktywna codziennosc oraz spokojne, konsekwentne prowadzenie.', 'Smooth Fox Terrier jest blisko spokrewniony z odmiana szorstkowlosa, ale rozni sie typem szaty i nieco innym wyrazem.'),
  ('manchester-terrier', 'Manchester Terrier laczy zrecznosc mniejszego psa z temperamentem sprawnego teriera. W codziennym zyciu zwykle potrzebuje kontaktu z czlowiekiem, ruchu i przewidywalnej rutyny, bo szybko reaguje na otoczenie.', 'Nazwa rasy nawiazuje do Manchesteru, gdzie typ ten byl szczegolnie ceniony w XIX wieku.'),
  ('glen-of-imaal-terrier', 'Glen of Imaal Terrier wywodzi sie z irlandzkich psow roboczych, ktore mialy byc wytrzymale i praktyczne w codziennym uzyciu. To rasa zwykle spokojniejsza od wielu innych terierow, ale nadal potrzebuje ruchu, pracy i jasnych zasad.', 'To jedna z najrzadszych irlandzkich ras terierow uznanych przez FCI.'),
  ('irish-soft-coated-wheaten-terrier', 'Irish Soft Coated Wheaten Terrier przez lata pracowal jako wszechstronny pies gospodarski. Dzis laczy chec bliskiego kontaktu z duza potrzeba aktywnosci, dlatego potrzebuje relacji, szkolenia i regularnej pielegnacji.', 'Pszeniczny odcien szaty tej rasy jest jedna z jej najbardziej charakterystycznych cech.'),
  ('terier-japonski', 'Terier japonski byl rozwijany jako niewielki pies do towarzystwa i codziennego zycia blisko ludzi. Zwykle najlepiej funkcjonuje tam, gdzie ma kontakt, przewidywalnosc i spokojne wychowanie bez nadmiaru presji.', 'Japanese Terrier pozostaje rasa malo znana poza Japonia, mimo oficjalnego uznania przez FCI.'),
  ('miniaturowy-bull-terrier', 'Miniaturowy bull terrier zachowuje wiele cech wiekszego bull terriera, ale w bardziej kompaktowym formacie. Potrzebuje sensownego ruchu, zabawy, kontroli pobudzenia i opiekuna, ktory lubi psa z charakterem.', 'Charakterystyczny profil glowy sprawia, ze miniature bull terrier jest bardzo latwy do rozpoznania.'),
  ('australian-silky-terrier', 'Australian Silky Terrier laczy cechy malego psa rodzinnego z temperamentem aktywnego teriera. W praktyce potrzebuje kontaktu, krotkich treningow i pielegnacji, a jego rozmiar nie oznacza calkowicie bezproblemowej obslugi.', 'Silky Terrier jest blisko spokrewniony z yorkshire terrierem, ale ma wlasny australijski rodowod hodowlany.'),
  ('english-toy-terrier', 'English Toy Terrier najlepiej odnajduje sie w domu, gdzie laczy bliski kontakt z opiekunem z codziennym ruchem i nauka spokojnego funkcjonowania. To rasa delikatna gabarytowo, ale zwykle bardzo zywa i uwazna.', 'Czarno-podpalane umaszczenie jest klasycznym znakiem rozpoznawczym tej rasy.'),
  ('bolonczyk', 'Bolonczyk od dawna jest kojarzony z psami do bliskiego zycia z czlowiekiem. W praktyce najlepiej czuje sie w domu z przewidywalna rutyna, lagodnym wychowaniem i regularna pielegnacja siersci.', 'Bolognese nalezy do rodziny bichonow i przez wieki byl obecny na europejskich dworach.'),
  ('lwi-piesek', 'Lwi piesek historycznie byl ceniony jako pies do towarzystwa, ale wspolczesnie nadal potrzebuje czegos wiecej niz ladnego wygladu. Licza sie relacja, regularna pielegnacja i spokojne budowanie dobrych nawykow.', 'Tradycyjne strzyzenie tej rasy nadaje jej sylwetce skojarzenie z malym lwem.'),
  ('griffon-belge', 'Griffon belge nalezy do malej rodziny belgijskich griffonow, ktore wyrosly z psow towarzyszacych i stajennych. W domu potrzebuje bliskiego kontaktu, delikatnego prowadzenia i uwaznosci na emocje psa.', 'Mimika i wyraz pyska griffonow sprawiaja, ze wiele osob zapamietuje je od pierwszego spotkania.'),
  ('griffon-bruxellois', 'Griffon bruxellois zwykle bardzo mocno przywiazuje sie do swoich ludzi i zle znosi dluga samotnosc. Najlepiej sluzy mu spokojny dom, delikatne szkolenie i opiekun, ktory lubi codzienny kontakt z malym psem.', 'Rasa jest silnie zwiazana z Belgia i z tradycja niewielkich psow do towarzystwa.'),
  ('petit-brabancon', 'Petit brabancon dzieli pochodzenie z dwiema odmianami griffonow, ale rozni sie typem szaty. W praktyce zwykle potrzebuje bliskosci z czlowiekiem, rutyny i spokojnego wychowania, ktore nie wzmacnia nadmiernej czujnosci.', 'Gladkosiersciowa szata sprawia, ze petit brabancon wyglada nieco inaczej niz jego szorstkowlosi kuzyni.'),
  ('grzywacz-chinski', 'Grzywacz chinski najlepiej funkcjonuje w domu, gdzie opiekun uwzglednia jego potrzeby zwiazane z temperatura, skora i codziennym kontaktem. To rasa czesto bardzo bliska czlowiekowi i wyczulona na atmosfere domu.', 'W rasie wystepuja odmiany hairless i powder puff, co jest rzadkie w jednym standardzie.'),
  ('spaniel-tybetanski', 'Spaniel tybetanski przez wieki byl zwiazany z zyciem w klasztorach i blisko ludzi, ale zachowal tez pewna samodzielnosc. W domu potrzebuje relacji, spokoju i rozwaznego podejscia do socjalizacji.', 'Tibetan Spaniel lubi obserwowac otoczenie z podwyzszonych miejsc, co wielu opiekunow szybko zauwaza w domu.'),
  ('terier-tybetanski', 'Mimo nazwy terier tybetanski nie jest klasycznym terierem roboczym, tylko psem do towarzystwa i zycia blisko czlowieka. Najlepiej radzi sobie tam, gdzie ma kontakt z rodzina, ruch i regularna pielegnacje.', 'Nazwa tej rasy bywa mylaca, bo w rzeczywistosci jej pochodzenie i funkcja byly inne niz u typowych terierow.'),
  ('king-charles-spaniel', 'King Charles Spaniel jest rasa do bliskiego zycia z ludzmi i zwykle dobrze odnajduje sie w domu, gdzie ma spokoj, kontakt i przewidywalna rutyna. To pies, ktory nie powinien byc zostawiany sam sobie jako jedynie dekoracyjny pupil.', 'Rasa jest zwiazana z brytyjska tradycja dworskich psow do towarzystwa.'),
  ('chin-japonski', 'Chin japonski najlepiej odnajduje sie przy opiekunie, ktory ceni spokojny kontakt, lekka aktywnosc i delikatne prowadzenie. To pies czesto wrazliwy na nastroj domu i przywiazany do swoich ludzi.', 'W zachowaniu chin japonski bywa opisywany jako pies o pewnej kociej zrecznosci.'),
  ('russkiy-toy', 'Russkiy Toy potrzebuje opiekuna, ktory mimo niewielkich gabarytow traktuje go jak prawdziwego psa z potrzebami ruchu, socjalizacji i odpoczynku. Zwykle dobrze czuje sie w spokojnym domu z duza bliskoscia czlowieka.', 'Russkiy Toy nalezy do najmniejszych ras uznanych przez FCI.'),
  ('kromfohrlander', 'Kromfohrlander jest stosunkowo mloda rasa rozwijana glownie jako pies do towarzystwa. W praktyce zwykle potrzebuje relacji, przewidywalnosci i aktywnosci dopasowanej do domu rodzinnego, bez przesadnego pobudzania.', 'Kromfohrlander jest jedna z mlodszych ras oficjalnie uznanych w Niemczech.'),
  ('chesapeake-bay-retriever', 'Chesapeake Bay Retriever byl rozwijany do pracy w trudnych warunkach wodnych, dlatego do dzis zwykle ma duza wytrzymalosc, samodzielnosc i potrzebe aktywnosci. Najlepiej sluzy mu opiekun, ktory laczy ruch z madrym szkoleniem.', 'Charakterystyczna szata chessie pomaga chronic psa przed zimnem i wilgocia podczas pracy w wodzie.'),
  ('kooikerhondje', 'Kooikerhondje ma korzenie zwiazane z wabieniem kaczek do specjalnych pulapek, co dobrze tlumaczy jego uwage, zrecznosc i potrzebe pracy z czlowiekiem. Dzis zwykle potrzebuje relacji, ruchu i spokojnego wychowania.', 'Kooikerhondje jest znane z ciemnych fredzli na koncach uszu, nazywanych kolczykami.'),
  ('barbet', 'Barbet rozwijal sie jako pies wodny do wspolpracy z czlowiekiem, dlatego zwykle dobrze reaguje na szkolenie i potrzebuje codziennej aktywnosci. Wymaga tez regularnej pielegnacji, aby utrzymac szate i skore w dobrej kondycji.', 'Barbet bywa wymieniany wsrod ras historycznie powiazanych z rozwojem innych europejskich psow wodnych.')
),
section_templates(section_key, heading, sort_order, body_template) AS (
  VALUES
  ('character', 'Najwazniejsze informacje', 10, '{name} to rasa dla opiekunow, ktorzy rozumieja jej codzienne potrzeby. To pies, ktoremu trzeba zapewnic ruch, zywienie i pielegnacje dopasowane do wieku, zdrowia oraz trybu zycia. Opis Futrio pomaga zaplanowac opieke, ale nie zastepuje rozmowy z hodowca, behawiorysta ani lekarzem weterynarii.

Rasa nie powinna byc wybierana wylacznie po wygladzie lub popularnosci, bo potrzeby dnia codziennego sa wazniejsze niz pierwsze wrazenie.'),
  ('for_whom', 'Dla kogo bedzie dobrym wyborem', 20, '{name} bedzie dobrym wyborem dla osob, ktore przed decyzja realnie ocenia czas na spacery, pielegnacje, szkolenie i budzet. Warto porozmawiac z odpowiedzialnym hodowca oraz sprawdzic potrzeby konkretnej linii.

To rasa dla opiekuna gotowego na rutyna, cierpliwosc i dopasowanie wymagan do wieku psa. Jesli dom nie ma czasu na prace z psem, lepiej odlozyc decyzje niz liczyc, ze sama rasa rozwiaze codzienne wyzwania.'),
  ('home_and_apartment', 'Dom i mieszkanie', 30, '{name} moze funkcjonowac w domu lub mieszkaniu, jesli opiekun zapewni przewidywalny plan dnia i miejsce do odpoczynku. Sam metraz nie zastepuje spacerow, kontaktu z czlowiekiem ani pracy nad spokojem.

W mieszkaniu szczegolnie wazna jest nauka wyciszania po aktywnosci oraz kontrola szczekania lub pobudzenia. Ogrod jest dodatkiem, ale nie powinien byc jedyna forma aktywnosci.'),
  ('children_and_family', 'Dzieci i rodzina', 40, '{name} moze odnalezc sie w rodzinie, jesli kontakty z dziecmi sa spokojne i nadzorowane. Dzieci powinny wiedziec, ze pies ma prawo do odpoczynku, jedzenia i odejscia z sytuacji.

Dorosly odpowiada za bezpieczenstwo obu stron. Wspolne zycie jest latwiejsze, gdy od poczatku obowiazuja proste zasady: nie budzic psa, nie zabierac mu zabawek i nie prowokowac gonitw.'),
  ('activity', 'Aktywnosc', 50, 'Aktywnosc rasy {name} powinna laczyc ruch, weszenie, krotkie cwiczenia i odpoczynek. Nawet spokojniejszy pies potrzebuje jakosciowych spacerow, a bardziej energiczny nie powinien byc tylko fizycznie nakrecany.

Dobry plan dnia obejmuje takze prace glowa i nauke wyciszenia. Zbyt malo zajecia moze prowadzic do frustracji, ale nadmiar bodzcow bez odpoczynku rowniez pogarsza codzienne zachowanie.'),
  ('grooming', 'Pielegnacja', 60, 'Pielegnacja rasy {name} powinna obejmowac siersc, pazury, uszy, zeby, lapy i kontrole skory. Regularne, krotkie zabiegi sa zwykle skuteczniejsze niz rzadkie nadrabianie zaniedban.

Zakres pielegnacji zalezy od typu siersci, aktywnosci i pory roku. W razie problemow skornych, koltunow, bolu przy dotyku lub nawracajacych stanow zapalnych warto skonsultowac sie ze specjalista.'),
  ('feeding', 'Zywienie', 70, 'Zywienie rasy {name} powinno byc dopasowane do wieku, masy ciala, aktywnosci, kastracji i stanu zdrowia. Zakres kalorii na Futrio jest orientacyjny i ma pomagac w planowaniu, a nie zastepowac zalecen lekarza weterynarii.

Warto odmierzać porcje, kontrolowac przysmaki i regularnie sprawdzac sylwetke psa. Nagłe zmiany apetytu, masy ciala lub trawienia powinny byc omowione z lekarzem.'),
  ('health', 'Zdrowie', 80, 'Informacje zdrowotne dla rasy {name} maja charakter orientacyjny. Opiekun powinien obserwowac mase ciala, chod, skore, apetyt, oddech i poziom energii, szczegolnie po zmianie karmy lub intensywnosci ruchu.

Futrio nie diagnozuje chorob. Kazda kulawizna, dusznosc, przewlekly swiad, biegunka, nagle oslabienie albo bol wymagaja konsultacji z lekarzem weterynarii.'),
  ('costs', 'Koszty utrzymania', 90, 'Koszty utrzymania rasy {name} obejmuja karme, profilaktyke weterynaryjna, zabezpieczenie przeciw pasozytom, pielegnacje, akcesoria i rezerwe na nagle leczenie. Wydatki rosna wraz z wielkoscia psa, wymaganiami siersci i potrzebami zdrowotnymi.

Kalkulator kosztow Futrio pomaga oszacowac miesieczny budzet, ale wynik jest orientacyjny. Ceny zaleza od miasta, jakosci produktow, standardu opieki oraz indywidualnych potrzeb zwierzecia.'),
  ('common_mistakes', 'Czeste bledy opiekunow', 100, 'Najczestszy blad przy rasie {name} to wybor pod wplywem wygladu, mody lub krotkiego opisu, bez sprawdzenia codziennych obowiazkow. Drugim bledem jest odkladanie wychowania, pielegnacji i kontroli masy ciala na pozniej.

Warto od poczatku uczyc spokojnego chodzenia na smyczy, przywolania, odpoczynku i akceptowania podstawowych zabiegow. Dobre nawyki sa latwiejsze niz naprawianie utrwalonych problemow.'),
  ('fun_facts', 'Ciekawostki', 110, '{fun_fact}

Ciekawostki o rasie sa dobrym punktem wejscia, ale w praktyce o dopasowaniu do domu decyduja codzienne potrzeby: aktywnosc, pielegnacja, relacja z ludzmi i przewidywalna rutyna.'),
  ('faq', 'FAQ', 120, 'P: Czy {name} nadaje sie do mieszkania?
O: To zalezy od aktywnosci, rutyny i mozliwosci opiekuna. Sama powierzchnia mieszkania nie jest jedynym kryterium.

P: Ile aktywnosci potrzebuje {name}?
O: Aktywnosc trzeba dopasowac do wieku, zdrowia i temperamentu psa, laczac ruch z praca umyslowa oraz odpoczynkiem.

P: Ile kosztuje utrzymanie tej rasy?
O: Koszty zaleza od karmy, profilaktyki, pielegnacji i indywidualnych potrzeb zdrowotnych.')
)
INSERT INTO breed_content_sections (breed_id, section_key, heading, body, sort_order)
SELECT
  b.id,
  t.section_key,
  t.heading,
  replace(
    replace(t.body_template, '{name}', b.name),
    '{fun_fact}', n.fun_fact
  ),
  t.sort_order
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
JOIN breed_notes n ON n.slug = bs.slug
CROSS JOIN section_templates t
WHERE true
ON CONFLICT(breed_id, section_key) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('terrier-brazylijski'),
  ('niemiecki-terier-mysliwski'),
  ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'),
  ('glen-of-imaal-terrier'),
  ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'),
  ('miniaturowy-bull-terrier'),
  ('australian-silky-terrier'),
  ('english-toy-terrier'),
  ('bolonczyk'),
  ('lwi-piesek'),
  ('griffon-belge'),
  ('griffon-bruxellois'),
  ('petit-brabancon'),
  ('grzywacz-chinski'),
  ('spaniel-tybetanski'),
  ('terier-tybetanski'),
  ('king-charles-spaniel'),
  ('chin-japonski'),
  ('russkiy-toy'),
  ('kromfohrlander'),
  ('chesapeake-bay-retriever'),
  ('kooikerhondje'),
  ('barbet')
),
faq_templates(question_template, answer_template, sort_order) AS (
  VALUES
  ('Czy {name} nadaje sie do mieszkania?', '{name} moze odnalezc sie w mieszkaniu, jesli opiekun zapewni ruch, wyciszenie i przewidywalna rutyna. Wazniejsze od metrazu sa codzienne potrzeby konkretnego psa.', 10),
  ('Ile aktywnosci potrzebuje {name}?', '{name} potrzebuje aktywnosci dopasowanej do wieku, zdrowia i temperamentu. W planie dnia powinny znalezc sie spacery, weszenie, nauka i spokojny odpoczynek.', 20),
  ('Czy {name} jest dobrym wyborem dla rodziny z dziecmi?', '{name} moze dobrze funkcjonowac w rodzinie, jesli dzieci znaja zasady spokojnego kontaktu. Dorosly powinien nadzorowac zabawe i pilnowac odpoczynku psa.', 30),
  ('Jak pielegnowac rase {name}?', 'Pielegnacja powinna obejmowac siersc, pazury, uszy, zeby i kontrole skory. Zakres zabiegow zalezy od typu siersci oraz stylu zycia psa.', 40),
  ('Ile moze kosztowac utrzymanie rasy {name}?', 'Koszt zalezy od jakosci karmy, profilaktyki, pielegnacji, akcesoriow i ewentualnych potrzeb zdrowotnych. Kalkulatory Futrio podaja wartosci orientacyjne.', 50)
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
  ('terrier-brazylijski'),
  ('niemiecki-terier-mysliwski'),
  ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'),
  ('glen-of-imaal-terrier'),
  ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'),
  ('miniaturowy-bull-terrier'),
  ('australian-silky-terrier'),
  ('english-toy-terrier'),
  ('bolonczyk'),
  ('lwi-piesek'),
  ('griffon-belge'),
  ('griffon-bruxellois'),
  ('petit-brabancon'),
  ('grzywacz-chinski'),
  ('spaniel-tybetanski'),
  ('terier-tybetanski'),
  ('king-charles-spaniel'),
  ('chin-japonski'),
  ('russkiy-toy'),
  ('kromfohrlander'),
  ('chesapeake-bay-retriever'),
  ('kooikerhondje'),
  ('barbet')
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
  CAST(ROUND(b.daily_calories_min * 0.07) AS INTEGER),
  CAST(ROUND(b.daily_calories_max * 0.11) AS INTEGER),
  CASE b.grooming_level WHEN 'high' THEN 130 WHEN 'medium' THEN 70 ELSE 40 END,
  CASE b.grooming_level WHEN 'high' THEN 300 WHEN 'medium' THEN 170 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 130 ELSE 90 END,
  CASE WHEN b.weight_max_kg >= 35 THEN 90 ELSE 60 END,
  'Profil kalkulatora dla FCI Batch 5. Wartosci orientacyjne do pozniejszej weryfikacji redakcyjnej.'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE true
ON CONFLICT(breed_id) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('terrier-brazylijski'),
  ('niemiecki-terier-mysliwski'),
  ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'),
  ('glen-of-imaal-terrier'),
  ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'),
  ('miniaturowy-bull-terrier'),
  ('australian-silky-terrier'),
  ('english-toy-terrier'),
  ('bolonczyk'),
  ('lwi-piesek'),
  ('griffon-belge'),
  ('griffon-bruxellois'),
  ('petit-brabancon'),
  ('grzywacz-chinski'),
  ('spaniel-tybetanski'),
  ('terier-tybetanski'),
  ('king-charles-spaniel'),
  ('chin-japonski'),
  ('russkiy-toy'),
  ('kromfohrlander'),
  ('chesapeake-bay-retriever'),
  ('kooikerhondje'),
  ('barbet')
)
INSERT INTO breed_images (breed_id, image_url, image_alt, image_title, image_source_type, is_primary, sort_order)
SELECT
  b.id,
  '/breeds/photos/' || b.slug || '.png',
  b.name || ' - zdjecie rasy',
  b.name || ' - zdjecie rasy',
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
  ('terrier-brazylijski'),
  ('niemiecki-terier-mysliwski'),
  ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'),
  ('glen-of-imaal-terrier'),
  ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'),
  ('miniaturowy-bull-terrier'),
  ('australian-silky-terrier'),
  ('english-toy-terrier'),
  ('bolonczyk'),
  ('lwi-piesek'),
  ('griffon-belge'),
  ('griffon-bruxellois'),
  ('petit-brabancon'),
  ('grzywacz-chinski'),
  ('spaniel-tybetanski'),
  ('terier-tybetanski'),
  ('king-charles-spaniel'),
  ('chin-japonski'),
  ('russkiy-toy'),
  ('kromfohrlander'),
  ('chesapeake-bay-retriever'),
  ('kooikerhondje'),
  ('barbet')
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
  'Sprawdz polecane produkty dla tej rasy',
  'W tym miejscu pojawia sie produkty dopasowane do potrzeb tej rasy, takie jak karma, akcesoria lub inne rozwiazania dla opiekunow.',
  'feeding_section',
  'Link moze miec charakter afiliacyjny.',
  'Zobacz polecane produkty'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE NOT EXISTS (
  SELECT 1 FROM affiliate_links al WHERE al.breed_id = b.id AND al.merchant = 'Placeholder'
);

WITH batch_recognitions(slug, organization_code, organization_name, recognized, recognition_status, note, source_url, verified_at) AS (
  VALUES
  ('terrier-brazylijski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Brazilian Terrier; numer FCI: 341.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('niemiecki-terier-mysliwski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: German Hunting Terrier; numer FCI: 103.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('fox-terrier-krotkowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Fox Terrier (Smooth); numer FCI: 12.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('manchester-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Manchester Terrier; numer FCI: 71.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('glen-of-imaal-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Irish Glen of Imaal Terrier; numer FCI: 302.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('irish-soft-coated-wheaten-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Irish Soft Coated Wheaten Terrier; numer FCI: 40.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('terier-japonski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Japanese Terrier; numer FCI: 259.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('miniaturowy-bull-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Miniature Bull Terrier; numer FCI: 359.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('australian-silky-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Australian Silky Terrier; numer FCI: 236.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('english-toy-terrier', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: English Toy Terrier (Black & Tan); numer FCI: 13.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('bolonczyk', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Bolognese; numer FCI: 196.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('lwi-piesek', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Little Lion Dog; numer FCI: 233.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('griffon-belge', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Griffon Belge; numer FCI: 81.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('griffon-bruxellois', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Griffon Bruxellois; numer FCI: 80.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('petit-brabancon', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Petit Brabancon; numer FCI: 82.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('grzywacz-chinski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Chinese Crested Dog; numer FCI: 288.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('spaniel-tybetanski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Tibetan Spaniel; numer FCI: 231.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('terier-tybetanski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Tibetan Terrier; numer FCI: 209.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('king-charles-spaniel', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: King Charles Spaniel; numer FCI: 128.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('chin-japonski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Japanese Chin; numer FCI: 206.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('russkiy-toy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Russian Toy; numer FCI: 352.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('kromfohrlander', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Kromfohrlander; numer FCI: 192.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('chesapeake-bay-retriever', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Chesapeake Bay Retriever; numer FCI: 263.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('kooikerhondje', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Nederlandse Kooikerhondje; numer FCI: 314.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24'),
  ('barbet', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Barbet; numer FCI: 105.', 'https://www.fci.be/en/Nomenclature/', '2026-06-24')
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
  ('terrier-brazylijski'),
  ('niemiecki-terier-mysliwski'),
  ('fox-terrier-krotkowlosy'),
  ('manchester-terrier'),
  ('glen-of-imaal-terrier'),
  ('irish-soft-coated-wheaten-terrier'),
  ('terier-japonski'),
  ('miniaturowy-bull-terrier'),
  ('australian-silky-terrier'),
  ('english-toy-terrier'),
  ('bolonczyk'),
  ('lwi-piesek'),
  ('griffon-belge'),
  ('griffon-bruxellois'),
  ('petit-brabancon'),
  ('grzywacz-chinski'),
  ('spaniel-tybetanski'),
  ('terier-tybetanski'),
  ('king-charles-spaniel'),
  ('chin-japonski'),
  ('russkiy-toy'),
  ('kromfohrlander'),
  ('chesapeake-bay-retriever'),
  ('kooikerhondje'),
  ('barbet')
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
  'Status ' || o.organization_code || ' wymaga osobnej weryfikacji w oficjalnym zrodle organizacji.',
  NULL,
  NULL
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
CROSS JOIN orgs o
WHERE true
ON CONFLICT(breed_id, organization_code) DO NOTHING;
