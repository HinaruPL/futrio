PRAGMA foreign_keys = ON;

-- FCI dog breeds pipeline: Batch 6 (2026-06-25).
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
  ('Clumber Spaniel', 'clumber-spaniel', 'Clumber Spaniel', '109', 'Great Britain', 'masywny, spokojny i bardzo wechowy spaniel o zrownowazonym usposobieniu', 'Clumber Spaniel rozwijal sie jako ciezszy spaniel mysliwski do spokojnej pracy w terenie. Dzis zwykle potrzebuje umiarkowanej aktywnosci, kontaktu z rodzina i opiekuna, ktory pilnuje kondycji oraz masy ciala.', 'Clumber Spaniel nalezy do najbardziej masywnych spanieli uznanych przez FCI.', 25, 34, 43, 51, 10, 12, 'medium', 'medium', 'medium', 5, 3, 900, 1450),
  ('Field Spaniel', 'field-spaniel', 'Field Spaniel', '123', 'Great Britain', 'wrazliwy, aktywny i elegancki spaniel chetny do wspolpracy z czlowiekiem', 'Field Spaniel wywodzi sie z brytyjskich spanieli uzytkowych przeznaczonych do pracy z mysliwym. W praktyce najlepiej sluzy mu dom, ktory laczy ruch, weszenie i spokojne szkolenie bez zbednej presji.', 'Field Spaniel jest rasa rzadsza niz bardziej znane cockery i springery, ale zachowuje typowo spanielowy styl pracy.', 18, 25, 43, 46, 11, 13, 'high', 'medium', 'medium', 5, 3, 700, 1150),
  ('Sussex Spaniel', 'sussex-spaniel', 'Sussex Spaniel', '127', 'Great Britain', 'niski, silny i spokojniejszy spaniel o dobrym wechu i wytrwalosci', 'Sussex Spaniel byl rozwijany do pracy w gestym terenie, gdzie liczyla sie wytrzymalosc i dokladne przeczesywanie lowiska. Dzis zwykle potrzebuje ruchu, rutyny i opiekuna, ktory nie przeciaza go mimo spokojniejszego wygladu.', 'Gleboki zlotobrazowy kolor szaty jest jedna z najbardziej charakterystycznych cech sussex spaniela.', 16, 23, 33, 41, 11, 13, 'medium', 'medium', 'medium', 5, 3, 620, 980),
  ('Irish Water Spaniel', 'irish-water-spaniel', 'Irish Water Spaniel', '124', 'Ireland', 'sprezysty, inteligentny i wodnolubny spaniel o kreconej szacie', 'Irish Water Spaniel rozwijal sie jako pies aportujacy z wody i pracy przy ptactwie, dlatego zwykle dobrze reaguje na szkolenie oraz potrzebuje aktywnosci. Najlepiej czuje sie przy opiekunie, ktory lubi wspolne zadania i regularny ruch.', 'Irish Water Spaniel jest jednym z najwyzszych spanieli uznanych przez FCI.', 20, 30, 51, 59, 10, 13, 'high', 'high', 'medium', 5, 3, 780, 1280),
  ('Curly Coated Retriever', 'curly-coated-retriever', 'Curly Coated Retriever', '110', 'Great Britain', 'wytrzymaly, niezalezny i pracowity retriever o ciasno kreconej siersci', 'Curly Coated Retriever nalezy do najstarszych retrieverow wykorzystywanych do aportu na ladzie i w wodzie. W nowoczesnym domu zwykle potrzebuje ruchu, sensownego planu dnia i opiekuna, ktory szanuje jego bardziej samodzielny charakter.', 'Zwarta, krecona szata curly coated retrievera pomaga chronic go podczas pracy w trudniejszych warunkach pogodowych.', 29, 41, 58, 69, 9, 12, 'high', 'low', 'medium', 5, 2, 1050, 1750),
  ('Hiszpanski pies wodny', 'hiszpanski-pies-wodny', 'Spanish Water Dog', '336', 'Spain', 'zywy, wszechstronny i bystry pies roboczy o welnistej szacie', 'Hiszpanski pies wodny rozwijal sie jako rasa uzytkowa wykorzystywana przy stadach i pracy w wodzie, dlatego zwykle laczy ruchliwosc z duza checia dzialania. Potrzebuje aktywnosci, nauki i opiekuna, ktory swiadomie prowadzi psa roboczego.', 'Charakterystyczna szata tej rasy naturalnie tworzy sznurki lub loki, zaleznie od sposobu pielegnacji.', 14, 22, 38, 50, 12, 14, 'high', 'medium', 'medium', 5, 3, 560, 980),
  ('Wetterhoun', 'wetterhoun', 'Wetterhoun', '221', 'Netherlands', 'mocny, czujny i odporny pies wodny o niezaleznym charakterze', 'Wetterhoun wywodzi sie z fryzyjskich psow uzytkowych cenionych za odpornosc i prace przy wodzie. W praktyce zwykle potrzebuje ruchu, relacji i opiekuna, ktory rozumie bardziej samodzielny temperament oraz nie buduje nadmiernej presji.', 'Wetterhoun jest jedna z mniej znanych niderlandzkich ras uznanych przez FCI.', 25, 35, 55, 59, 11, 13, 'medium', 'medium', 'medium', 4, 2, 900, 1450),
  ('Drentsche Patrijshond', 'drentsche-patrijshond', 'Drentsche Patrijshond', '224', 'Netherlands', 'wrazliwy, rodzinny i pracowity wyzel potrzebujacy wspolpracy z czlowiekiem', 'Drentsche Patrijshond byl rozwijany jako wszechstronny pies mysliwski do pracy blisko opiekuna. Do dzis zwykle najlepiej funkcjonuje tam, gdzie ma relacje, ruch i spokojne szkolenie oparte na wspolpracy.', 'Rasa jest mocno zwiazana z regionem Drenthe w Niderlandach, od ktorego pochodzi jej nazwa.', 20, 33, 55, 63, 11, 14, 'high', 'medium', 'easy', 5, 3, 760, 1350),
  ('Maly munsterlander', 'maly-munsterlander', 'Small Munsterlander', '102', 'Germany', 'energiczny, uwazny i bardzo chetny do pracy wyzel o duzej wytrwalosci', 'Maly munsterlander rozwijal sie jako wszechstronny wyzel do pracy przed i po strzale, dlatego zwykle ma duza potrzebe ruchu oraz wspolpracy. W nowoczesnym domu potrzebuje zajecia, treningu i odpoczynku w rozsadnych proporcjach.', 'Mimo nazwy maly munsterlander nie jest psem miniaturowym, tylko sredniej wielkosci wytrzymalym wyzlem.', 18, 27, 50, 58, 12, 14, 'high', 'medium', 'easy', 5, 3, 700, 1120),
  ('Duzy munsterlander', 'duzy-munsterlander', 'Large Munsterlander', '118', 'Germany', 'silny, zrownowazony i bardzo uzytkowy wyzel o dluzszej szacie', 'Duzy munsterlander nalezy do niemieckich wyzlow rozwijanych z mysla o wszechstronnej pracy terenowej. Potrzebuje aktywnosci, kontaktu z czlowiekiem i opiekuna, ktory lubi regularna prace z psem o wysokiej motywacji.', 'Czarno-biale umaszczenie duzego munsterlandera od razu odroznia go od wielu innych wyzlow kontynentalnych.', 23, 32, 58, 65, 11, 13, 'high', 'medium', 'easy', 5, 2, 850, 1380),
  ('Bracco Italiano', 'bracco-italiano', 'Bracco Italiano', '202', 'Italy', 'duzy, elegancki i wytrwaly wyzel o spokojnej pracy nosem', 'Bracco Italiano ma dluga historie jako wloski pies mysliwski do spokojnej, metodycznej pracy w polu. Dzis zwykle potrzebuje ruchu, nauki i domu, ktory doceni zarowno jego lagodnosc, jak i uzytkowe potrzeby.', 'Bracco Italiano jest jedna z najstarszych ras wyzlow kontynentalnych opisanych w Europie.', 25, 40, 55, 67, 10, 13, 'high', 'low', 'easy', 5, 2, 920, 1650),
  ('Spinone Italiano', 'spinone-italiano', 'Italian Spinone', '165', 'Italy', 'cierpliwy, mocny i bardzo wytrzymaly wyzel o szorstkiej szacie', 'Spinone Italiano rozwijal sie jako wszechstronny pies mysliwski zdolny do pracy w trudniejszym terenie. W codziennym zyciu zwykle potrzebuje ruchu, szkolenia i opiekuna, ktory lubi psa spokojnego w domu, ale gotowego do zadan.', 'Szorstka, gesta okrywa spinone italiano pomaga chronic psa podczas pracy w zaroslach i wilgoci.', 28, 39, 58, 70, 10, 12, 'high', 'medium', 'easy', 5, 2, 980, 1680),
  ('Epagneul Breton', 'epagneul-breton', 'Brittany Spaniel', '95', 'France', 'szybki, bystry i bardzo kontaktowy wyzel o kompaktowej budowie', 'Epagneul Breton zostal wyhodowany do dynamicznej pracy z mysliwym, dlatego zwykle ma duza potrzebe ruchu i wspolpracy. Najlepiej radzi sobie przy aktywnym opiekunie, ktory daje mu zadania oraz przewidywalna rutyne.', 'Epagneul Breton jest jednym z najmniejszych wyzlow kontynentalnych uznanych przez FCI.', 14, 18, 47, 52, 12, 14, 'high', 'medium', 'easy', 5, 3, 560, 820),
  ('Wyzel niemiecki krotkowlosy', 'wyzel-niemiecki-krotkowlosy', 'German Short-haired Pointing Dog', '119', 'Germany', 'wszechstronny, ambitny i bardzo aktywny wyzel o duzej potrzebie pracy', 'Wyzel niemiecki krotkowlosy rozwijal sie jako wszechstronny pies mysliwski do zadan na ladzie i w wodzie. Do dzis potrzebuje aktywnosci, szkolenia i opiekuna, ktory rozumie energie oraz uzytkowe zaplecze tej rasy.', 'To jedna z najbardziej rozpoznawalnych ras wyzlow kontynentalnych na swiecie.', 20, 32, 53, 66, 12, 14, 'high', 'low', 'easy', 5, 2, 760, 1350),
  ('Wyzel niemiecki szorstkowlosy', 'wyzel-niemiecki-szorstkowlosy', 'German Wire-haired Pointing Dog', '98', 'Germany', 'mocny, zdeterminowany i wytrzymaly wyzel o szorstkiej okrywie', 'Wyzel niemiecki szorstkowlosy byl tworzony jako pies wszechstronny do pracy w bardziej wymagajacym terenie i warunkach pogodowych. W praktyce potrzebuje ruchu, konsekwencji i opiekuna lubiacego prace z psem uzytkowym.', 'Szorstka okrywa tej rasy ma znaczenie praktyczne i pomaga chronic psa podczas pracy w terenie.', 23, 34, 57, 68, 11, 13, 'high', 'medium', 'easy', 5, 2, 860, 1450),
  ('Wyzel niemiecki dlugowlosy', 'wyzel-niemiecki-dlugowlosy', 'German Long-haired Pointing Dog', '117', 'Germany', 'spokojnie pracujacy, rodzinny i wytrwaly wyzel o dluzszej siersci', 'Wyzel niemiecki dlugowlosy rozwijal sie jako wszechstronny pies mysliwski dla opiekunow ceniacych wspolprace i spokojniejszy styl pracy. Nadal potrzebuje aktywnosci, relacji i systematycznego szkolenia.', 'Dluzsza okrywa tej rasy odroznia ja od bardziej znanych krotkowlosych i szorstkowlosych kuzynow.', 25, 35, 58, 70, 11, 13, 'high', 'medium', 'easy', 5, 2, 900, 1500),
  ('Griffon Korthalsa', 'griffon-korthalsa', 'Wire-haired Pointing Griffon Korthals', '107', 'France', 'bliski czlowiekowi, wytrzymaly i bardzo uzytkowy wyzel o szorstkiej brodzie', 'Griffon Korthalsa zostal wyhodowany do wszechstronnej pracy mysliwskiej i zwykle mocno korzysta z bliskiej wspolpracy z opiekunem. W codziennym zyciu potrzebuje zajecia, ruchu i rozsadnej pielegnacji szaty.', 'Charakterystyczna broda i brwi tej rasy sprawiaja, ze griffon Korthalsa ma bardzo wyrazisty wyglad.', 20, 30, 50, 60, 12, 14, 'high', 'medium', 'easy', 5, 3, 740, 1220),
  ('Braque francais typ pirenejski', 'braque-francais-typ-pirenejski', 'French Pointing Dog - Pyrenean Type', '134', 'France', 'lekki, szybki i bardzo chetny do wspolpracy wyzel polowy', 'Braque francais typu pirenejskiego to lzejsza odmiana francuskiego wyzla rozwijana do sprawnej pracy w terenie. Najlepiej czuje sie przy aktywnym opiekunie, ktory lubi szkolenie, spacery i wspolna prace nosem.', 'Typ pirenejski jest zwykle lzejszy i bardziej zwrotny niz wieksza odmiana gaskonska.', 17, 25, 47, 58, 12, 14, 'high', 'low', 'easy', 5, 3, 620, 980),
  ('Braque francais typ gaskonski', 'braque-francais-typ-gaskonski', 'French Pointing Dog - Gascogne Type', '133', 'France', 'wiekszy, spokojnie pracujacy i wytrwaly wyzel o klasycznej sylwetce', 'Braque francais typu gaskonskiego zachowuje bardziej masywny format i spokojniejszy styl pracy w porownaniu z typem pirenejskim. Wymaga aktywnosci, wspolpracy i opiekuna, ktory lubi regularny trening terenowy.', 'Typ gaskonski jest starszy i zwykle bardziej masywny od odmiany pirenejskiej.', 24, 32, 56, 69, 11, 13, 'high', 'low', 'easy', 5, 2, 860, 1360),
  ('Braque d Auvergne', 'braque-d-auvergne', 'Braque d Auvergne', '180', 'France', 'elegancki, lagodny i pracowity wyzel o czarno-bialym umaszczeniu', 'Braque d Auvergne rozwijal sie jako francuski pies mysliwski do pracy blisko opiekuna. Do dzis zwykle potrzebuje relacji, ruchu i spokojnego szkolenia, ktore pozwala wykorzystac jego czuly nos i dobra motywacje.', 'Kontrastowe czarno-biale umaszczenie sprawia, ze braque d Auvergne latwo zapada w pamiec.', 22, 28, 53, 63, 11, 13, 'high', 'low', 'easy', 5, 3, 760, 1120),
  ('Braque du Bourbonnais', 'braque-du-bourbonnais', 'Braque du Bourbonnais', '179', 'France', 'zwarty, czuly i wszechstronny wyzel dobrze pracujacy z czlowiekiem', 'Braque du Bourbonnais nalezy do francuskich wyzlow cenionych za kompaktowa budowe i uzytkowa wszechstronnosc. W domu potrzebuje aktywnosci, przewidywalnosci i opiekuna, ktory daje mu zarowno zadania, jak i odpoczynek.', 'Rasa jest znana z kompaktowej budowy i bywa kojarzona z naturalnie krotszym ogonem.', 16, 25, 48, 57, 11, 14, 'high', 'low', 'easy', 5, 3, 620, 980),
  ('Braque Saint-Germain', 'braque-saint-germain', 'Braque Saint-Germain', '115', 'France', 'szybki, rodzinny i elegancki wyzel o lagodnym usposobieniu', 'Braque Saint-Germain rozwijal sie jako francuski wyzel do pracy w polu, laczacy uzytkowosc z dobrym kontaktem z czlowiekiem. Zwykle potrzebuje ruchu, wspolpracy i opiekuna, ktory rozumie psa aktywnego, ale wrazliwego.', 'Braque Saint-Germain jest rasa mocno zwiazana z francuska tradycja kynologiczna XIX wieku.', 18, 27, 54, 62, 11, 13, 'high', 'low', 'easy', 5, 3, 680, 1080),
  ('Wyzel wegierski szorstkowlosy', 'wyzel-wegierski-szorstkowlosy', 'Hungarian Wire-haired Pointer', '239', 'Hungary', 'aktywny, wszechstronny i bardzo kontaktowy wyzel o szorstkiej okrywie', 'Wyzel wegierski szorstkowlosy laczy cechy psa pracujacego z bliska relacja z czlowiekiem, dlatego zwykle dobrze reaguje na szkolenie i wspolne zadania. Potrzebuje ruchu, zajecia i domu, ktory nie zostawia go bez planu na dzien.', 'To szorstkowlosa odmiana wyzla wegierskiego rozwijana z mysla o wiekszej odpornosci w terenie.', 20, 30, 54, 64, 12, 14, 'high', 'medium', 'easy', 5, 3, 760, 1220),
  ('Spaniel pikardyjski niebieski', 'spaniel-pikardyjski-niebieski', 'Blue Picardy Spaniel', '106', 'France', 'lagodny, wytrwaly i wechowy spaniel mysliwski o niebieskawym umaszczeniu', 'Spaniel pikardyjski niebieski rozwijal sie jako francuski pies do pracy w polu i na mokradlach. W codziennym zyciu zwykle potrzebuje ruchu, spokojnej wspolpracy i opiekuna, ktory lubi aktywnosc terenowa.', 'Niebieskawy odcien umaszczenia wyroznia te rase na tle innych spanieli mysliwskich.', 20, 25, 56, 61, 11, 13, 'high', 'medium', 'easy', 5, 3, 720, 980),
  ('Spaniel pikardyjski', 'spaniel-pikardyjski', 'Picardy Spaniel', '108', 'France', 'spokojny, rodzinny i uzytkowy spaniel o dobrej wytrzymalosci terenowej', 'Spaniel pikardyjski nalezy do francuskich ras mysliwskich cenionych za spokojniejsza prace i dobry kontakt z przewodnikiem. Potrzebuje ruchu, relacji i domu, ktory daje mu zadania zamiast wylacznie krotkich spacerow.', 'Picardy Spaniel jest jedna z klasycznych francuskich ras spanieli mysliwskich.', 20, 25, 55, 62, 11, 13, 'high', 'medium', 'easy', 5, 3, 720, 1020)
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
  ('clumber-spaniel'),
  ('field-spaniel'),
  ('sussex-spaniel'),
  ('irish-water-spaniel'),
  ('curly-coated-retriever'),
  ('hiszpanski-pies-wodny'),
  ('wetterhoun'),
  ('drentsche-patrijshond'),
  ('maly-munsterlander'),
  ('duzy-munsterlander'),
  ('bracco-italiano'),
  ('spinone-italiano'),
  ('epagneul-breton'),
  ('wyzel-niemiecki-krotkowlosy'),
  ('wyzel-niemiecki-szorstkowlosy'),
  ('wyzel-niemiecki-dlugowlosy'),
  ('griffon-korthalsa'),
  ('braque-francais-typ-pirenejski'),
  ('braque-francais-typ-gaskonski'),
  ('braque-d-auvergne'),
  ('braque-du-bourbonnais'),
  ('braque-saint-germain'),
  ('wyzel-wegierski-szorstkowlosy'),
  ('spaniel-pikardyjski-niebieski'),
  ('spaniel-pikardyjski')
),
breed_notes(slug, history_note, fun_fact) AS (
  VALUES
  ('clumber-spaniel', 'Clumber Spaniel rozwijal sie jako ciezszy spaniel mysliwski do spokojnej pracy w terenie. Dzis zwykle potrzebuje umiarkowanej aktywnosci, kontaktu z rodzina i opiekuna, ktory pilnuje kondycji oraz masy ciala.', 'Clumber Spaniel nalezy do najbardziej masywnych spanieli uznanych przez FCI.'),
  ('field-spaniel', 'Field Spaniel wywodzi sie z brytyjskich spanieli uzytkowych przeznaczonych do pracy z mysliwym. W praktyce najlepiej sluzy mu dom, ktory laczy ruch, weszenie i spokojne szkolenie bez zbednej presji.', 'Field Spaniel jest rasa rzadsza niz bardziej znane cockery i springery, ale zachowuje typowo spanielowy styl pracy.'),
  ('sussex-spaniel', 'Sussex Spaniel byl rozwijany do pracy w gestym terenie, gdzie liczyla sie wytrzymalosc i dokladne przeczesywanie lowiska. Dzis zwykle potrzebuje ruchu, rutyny i opiekuna, ktory nie przeciaza go mimo spokojniejszego wygladu.', 'Gleboki zlotobrazowy kolor szaty jest jedna z najbardziej charakterystycznych cech sussex spaniela.'),
  ('irish-water-spaniel', 'Irish Water Spaniel rozwijal sie jako pies aportujacy z wody i pracy przy ptactwie, dlatego zwykle dobrze reaguje na szkolenie oraz potrzebuje aktywnosci. Najlepiej czuje sie przy opiekunie, ktory lubi wspolne zadania i regularny ruch.', 'Irish Water Spaniel jest jednym z najwyzszych spanieli uznanych przez FCI.'),
  ('curly-coated-retriever', 'Curly Coated Retriever nalezy do najstarszych retrieverow wykorzystywanych do aportu na ladzie i w wodzie. W nowoczesnym domu zwykle potrzebuje ruchu, sensownego planu dnia i opiekuna, ktory szanuje jego bardziej samodzielny charakter.', 'Zwarta, krecona szata curly coated retrievera pomaga chronic go podczas pracy w trudniejszych warunkach pogodowych.'),
  ('hiszpanski-pies-wodny', 'Hiszpanski pies wodny rozwijal sie jako rasa uzytkowa wykorzystywana przy stadach i pracy w wodzie, dlatego zwykle laczy ruchliwosc z duza checia dzialania. Potrzebuje aktywnosci, nauki i opiekuna, ktory swiadomie prowadzi psa roboczego.', 'Charakterystyczna szata tej rasy naturalnie tworzy sznurki lub loki, zaleznie od sposobu pielegnacji.'),
  ('wetterhoun', 'Wetterhoun wywodzi sie z fryzyjskich psow uzytkowych cenionych za odpornosc i prace przy wodzie. W praktyce zwykle potrzebuje ruchu, relacji i opiekuna, ktory rozumie bardziej samodzielny temperament oraz nie buduje nadmiernej presji.', 'Wetterhoun jest jedna z mniej znanych niderlandzkich ras uznanych przez FCI.'),
  ('drentsche-patrijshond', 'Drentsche Patrijshond byl rozwijany jako wszechstronny pies mysliwski do pracy blisko opiekuna. Do dzis zwykle najlepiej funkcjonuje tam, gdzie ma relacje, ruch i spokojne szkolenie oparte na wspolpracy.', 'Rasa jest mocno zwiazana z regionem Drenthe w Niderlandach, od ktorego pochodzi jej nazwa.'),
  ('maly-munsterlander', 'Maly munsterlander rozwijal sie jako wszechstronny wyzel do pracy przed i po strzale, dlatego zwykle ma duza potrzebe ruchu oraz wspolpracy. W nowoczesnym domu potrzebuje zajecia, treningu i odpoczynku w rozsadnych proporcjach.', 'Mimo nazwy maly munsterlander nie jest psem miniaturowym, tylko sredniej wielkosci wytrzymalym wyzlem.'),
  ('duzy-munsterlander', 'Duzy munsterlander nalezy do niemieckich wyzlow rozwijanych z mysla o wszechstronnej pracy terenowej. Potrzebuje aktywnosci, kontaktu z czlowiekiem i opiekuna, ktory lubi regularna prace z psem o wysokiej motywacji.', 'Czarno-biale umaszczenie duzego munsterlandera od razu odroznia go od wielu innych wyzlow kontynentalnych.'),
  ('bracco-italiano', 'Bracco Italiano ma dluga historie jako wloski pies mysliwski do spokojnej, metodycznej pracy w polu. Dzis zwykle potrzebuje ruchu, nauki i domu, ktory doceni zarowno jego lagodnosc, jak i uzytkowe potrzeby.', 'Bracco Italiano jest jedna z najstarszych ras wyzlow kontynentalnych opisanych w Europie.'),
  ('spinone-italiano', 'Spinone Italiano rozwijal sie jako wszechstronny pies mysliwski zdolny do pracy w trudniejszym terenie. W codziennym zyciu zwykle potrzebuje ruchu, szkolenia i opiekuna, ktory lubi psa spokojnego w domu, ale gotowego do zadan.', 'Szorstka, gesta okrywa spinone italiano pomaga chronic psa podczas pracy w zaroslach i wilgoci.'),
  ('epagneul-breton', 'Epagneul Breton zostal wyhodowany do dynamicznej pracy z mysliwym, dlatego zwykle ma duza potrzebe ruchu i wspolpracy. Najlepiej radzi sobie przy aktywnym opiekunie, ktory daje mu zadania oraz przewidywalna rutyne.', 'Epagneul Breton jest jednym z najmniejszych wyzlow kontynentalnych uznanych przez FCI.'),
  ('wyzel-niemiecki-krotkowlosy', 'Wyzel niemiecki krotkowlosy rozwijal sie jako wszechstronny pies mysliwski do zadan na ladzie i w wodzie. Do dzis potrzebuje aktywnosci, szkolenia i opiekuna, ktory rozumie energie oraz uzytkowe zaplecze tej rasy.', 'To jedna z najbardziej rozpoznawalnych ras wyzlow kontynentalnych na swiecie.'),
  ('wyzel-niemiecki-szorstkowlosy', 'Wyzel niemiecki szorstkowlosy byl tworzony jako pies wszechstronny do pracy w bardziej wymagajacym terenie i warunkach pogodowych. W praktyce potrzebuje ruchu, konsekwencji i opiekuna lubiacego prace z psem uzytkowym.', 'Szorstka okrywa tej rasy ma znaczenie praktyczne i pomaga chronic psa podczas pracy w terenie.'),
  ('wyzel-niemiecki-dlugowlosy', 'Wyzel niemiecki dlugowlosy rozwijal sie jako wszechstronny pies mysliwski dla opiekunow ceniacych wspolprace i spokojniejszy styl pracy. Nadal potrzebuje aktywnosci, relacji i systematycznego szkolenia.', 'Dluzsza okrywa tej rasy odroznia ja od bardziej znanych krotkowlosych i szorstkowlosych kuzynow.'),
  ('griffon-korthalsa', 'Griffon Korthalsa zostal wyhodowany do wszechstronnej pracy mysliwskiej i zwykle mocno korzysta z bliskiej wspolpracy z opiekunem. W codziennym zyciu potrzebuje zajecia, ruchu i rozsadnej pielegnacji szaty.', 'Charakterystyczna broda i brwi tej rasy sprawiaja, ze griffon Korthalsa ma bardzo wyrazisty wyglad.'),
  ('braque-francais-typ-pirenejski', 'Braque francais typu pirenejskiego to lzejsza odmiana francuskiego wyzla rozwijana do sprawnej pracy w terenie. Najlepiej czuje sie przy aktywnym opiekunie, ktory lubi szkolenie, spacery i wspolna prace nosem.', 'Typ pirenejski jest zwykle lzejszy i bardziej zwrotny niz wieksza odmiana gaskonska.'),
  ('braque-francais-typ-gaskonski', 'Braque francais typu gaskonskiego zachowuje bardziej masywny format i spokojniejszy styl pracy w porownaniu z typem pirenejskim. Wymaga aktywnosci, wspolpracy i opiekuna, ktory lubi regularny trening terenowy.', 'Typ gaskonski jest starszy i zwykle bardziej masywny od odmiany pirenejskiej.'),
  ('braque-d-auvergne', 'Braque d Auvergne rozwijal sie jako francuski pies mysliwski do pracy blisko opiekuna. Do dzis zwykle potrzebuje relacji, ruchu i spokojnego szkolenia, ktore pozwala wykorzystac jego czuly nos i dobra motywacje.', 'Kontrastowe czarno-biale umaszczenie sprawia, ze braque d Auvergne latwo zapada w pamiec.'),
  ('braque-du-bourbonnais', 'Braque du Bourbonnais nalezy do francuskich wyzlow cenionych za kompaktowa budowe i uzytkowa wszechstronnosc. W domu potrzebuje aktywnosci, przewidywalnosci i opiekuna, ktory daje mu zarowno zadania, jak i odpoczynek.', 'Rasa jest znana z kompaktowej budowy i bywa kojarzona z naturalnie krotszym ogonem.'),
  ('braque-saint-germain', 'Braque Saint-Germain rozwijal sie jako francuski wyzel do pracy w polu, laczacy uzytkowosc z dobrym kontaktem z czlowiekiem. Zwykle potrzebuje ruchu, wspolpracy i opiekuna, ktory rozumie psa aktywnego, ale wrazliwego.', 'Braque Saint-Germain jest rasa mocno zwiazana z francuska tradycja kynologiczna XIX wieku.'),
  ('wyzel-wegierski-szorstkowlosy', 'Wyzel wegierski szorstkowlosy laczy cechy psa pracujacego z bliska relacja z czlowiekiem, dlatego zwykle dobrze reaguje na szkolenie i wspolne zadania. Potrzebuje ruchu, zajecia i domu, ktory nie zostawia go bez planu na dzien.', 'To szorstkowlosa odmiana wyzla wegierskiego rozwijana z mysla o wiekszej odpornosci w terenie.'),
  ('spaniel-pikardyjski-niebieski', 'Spaniel pikardyjski niebieski rozwijal sie jako francuski pies do pracy w polu i na mokradlach. W codziennym zyciu zwykle potrzebuje ruchu, spokojnej wspolpracy i opiekuna, ktory lubi aktywnosc terenowa.', 'Niebieskawy odcien umaszczenia wyroznia te rase na tle innych spanieli mysliwskich.'),
  ('spaniel-pikardyjski', 'Spaniel pikardyjski nalezy do francuskich ras mysliwskich cenionych za spokojniejsza prace i dobry kontakt z przewodnikiem. Potrzebuje ruchu, relacji i domu, ktory daje mu zadania zamiast wylacznie krotkich spacerow.', 'Picardy Spaniel jest jedna z klasycznych francuskich ras spanieli mysliwskich.')
),
section_templates(section_key, heading, sort_order, body_template) AS (
  VALUES
  ('character', 'Najwazniejsze informacje', 10, '{name} to rasa dla opiekunow, ktorzy rozumieja jej codzienne potrzeby. To pies, ktoremu trzeba zapewnic ruch, zywienie i pielegnacje dopasowane do wieku, zdrowia oraz trybu zycia. Opis Futrio pomaga zaplanowac opieke, ale nie zastepuje rozmowy z hodowca, behawiorysta ani lekarzem weterynarii.

Rasa nie powinna byc wybierana wylacznie po wygladzie lub popularnosci, bo potrzeby dnia codziennego sa wazniejsze niz pierwsze wrazenie.'),
  ('for_whom', 'Dla kogo bedzie dobrym wyborem', 20, '{name} bedzie dobrym wyborem dla osob, ktore przed decyzja realnie ocenia czas na spacery, pielegnacje, szkolenie i budzet. Warto porozmawiac z odpowiedzialnym hodowca oraz sprawdzic potrzeby konkretnej linii.

To rasa dla opiekuna gotowego na rutyne, cierpliwosc i dopasowanie wymagan do wieku psa. Jesli dom nie ma czasu na prace z psem, lepiej odlozyc decyzje niz liczyc, ze sama rasa rozwiaze codzienne wyzwania.'),
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
  ('clumber-spaniel'),
  ('field-spaniel'),
  ('sussex-spaniel'),
  ('irish-water-spaniel'),
  ('curly-coated-retriever'),
  ('hiszpanski-pies-wodny'),
  ('wetterhoun'),
  ('drentsche-patrijshond'),
  ('maly-munsterlander'),
  ('duzy-munsterlander'),
  ('bracco-italiano'),
  ('spinone-italiano'),
  ('epagneul-breton'),
  ('wyzel-niemiecki-krotkowlosy'),
  ('wyzel-niemiecki-szorstkowlosy'),
  ('wyzel-niemiecki-dlugowlosy'),
  ('griffon-korthalsa'),
  ('braque-francais-typ-pirenejski'),
  ('braque-francais-typ-gaskonski'),
  ('braque-d-auvergne'),
  ('braque-du-bourbonnais'),
  ('braque-saint-germain'),
  ('wyzel-wegierski-szorstkowlosy'),
  ('spaniel-pikardyjski-niebieski'),
  ('spaniel-pikardyjski')
),
faq_templates(question_template, answer_template, sort_order) AS (
  VALUES
  ('Czy {name} nadaje sie do mieszkania?', '{name} moze odnalezc sie w mieszkaniu, jesli opiekun zapewni ruch, wyciszenie i przewidywalna rutyne. Wazniejsze od metrazu sa codzienne potrzeby konkretnego psa.', 10),
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
  ('clumber-spaniel'),
  ('field-spaniel'),
  ('sussex-spaniel'),
  ('irish-water-spaniel'),
  ('curly-coated-retriever'),
  ('hiszpanski-pies-wodny'),
  ('wetterhoun'),
  ('drentsche-patrijshond'),
  ('maly-munsterlander'),
  ('duzy-munsterlander'),
  ('bracco-italiano'),
  ('spinone-italiano'),
  ('epagneul-breton'),
  ('wyzel-niemiecki-krotkowlosy'),
  ('wyzel-niemiecki-szorstkowlosy'),
  ('wyzel-niemiecki-dlugowlosy'),
  ('griffon-korthalsa'),
  ('braque-francais-typ-pirenejski'),
  ('braque-francais-typ-gaskonski'),
  ('braque-d-auvergne'),
  ('braque-du-bourbonnais'),
  ('braque-saint-germain'),
  ('wyzel-wegierski-szorstkowlosy'),
  ('spaniel-pikardyjski-niebieski'),
  ('spaniel-pikardyjski')
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
  'Profil kalkulatora dla FCI Batch 6. Wartosci orientacyjne do pozniejszej weryfikacji redakcyjnej.'
FROM batch_slugs bs
JOIN breeds b ON b.slug = bs.slug
WHERE true
ON CONFLICT(breed_id) DO NOTHING;

WITH batch_slugs(slug) AS (
  VALUES
  ('clumber-spaniel'),
  ('field-spaniel'),
  ('sussex-spaniel'),
  ('irish-water-spaniel'),
  ('curly-coated-retriever'),
  ('hiszpanski-pies-wodny'),
  ('wetterhoun'),
  ('drentsche-patrijshond'),
  ('maly-munsterlander'),
  ('duzy-munsterlander'),
  ('bracco-italiano'),
  ('spinone-italiano'),
  ('epagneul-breton'),
  ('wyzel-niemiecki-krotkowlosy'),
  ('wyzel-niemiecki-szorstkowlosy'),
  ('wyzel-niemiecki-dlugowlosy'),
  ('griffon-korthalsa'),
  ('braque-francais-typ-pirenejski'),
  ('braque-francais-typ-gaskonski'),
  ('braque-d-auvergne'),
  ('braque-du-bourbonnais'),
  ('braque-saint-germain'),
  ('wyzel-wegierski-szorstkowlosy'),
  ('spaniel-pikardyjski-niebieski'),
  ('spaniel-pikardyjski')
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
  ('clumber-spaniel'),
  ('field-spaniel'),
  ('sussex-spaniel'),
  ('irish-water-spaniel'),
  ('curly-coated-retriever'),
  ('hiszpanski-pies-wodny'),
  ('wetterhoun'),
  ('drentsche-patrijshond'),
  ('maly-munsterlander'),
  ('duzy-munsterlander'),
  ('bracco-italiano'),
  ('spinone-italiano'),
  ('epagneul-breton'),
  ('wyzel-niemiecki-krotkowlosy'),
  ('wyzel-niemiecki-szorstkowlosy'),
  ('wyzel-niemiecki-dlugowlosy'),
  ('griffon-korthalsa'),
  ('braque-francais-typ-pirenejski'),
  ('braque-francais-typ-gaskonski'),
  ('braque-d-auvergne'),
  ('braque-du-bourbonnais'),
  ('braque-saint-germain'),
  ('wyzel-wegierski-szorstkowlosy'),
  ('spaniel-pikardyjski-niebieski'),
  ('spaniel-pikardyjski')
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
  ('clumber-spaniel', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Clumber Spaniel; numer FCI: 109.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('field-spaniel', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Field Spaniel; numer FCI: 123.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('sussex-spaniel', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Sussex Spaniel; numer FCI: 127.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('irish-water-spaniel', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Irish Water Spaniel; numer FCI: 124.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('curly-coated-retriever', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Curly Coated Retriever; numer FCI: 110.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('hiszpanski-pies-wodny', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Spanish Water Dog; numer FCI: 336.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('wetterhoun', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Wetterhoun; numer FCI: 221.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('drentsche-patrijshond', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Drentsche Patrijshond; numer FCI: 224.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('maly-munsterlander', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Small Munsterlander; numer FCI: 102.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('duzy-munsterlander', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Large Munsterlander; numer FCI: 118.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('bracco-italiano', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Bracco Italiano; numer FCI: 202.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('spinone-italiano', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Italian Spinone; numer FCI: 165.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('epagneul-breton', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Brittany Spaniel; numer FCI: 95.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('wyzel-niemiecki-krotkowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: German Short-haired Pointing Dog; numer FCI: 119.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('wyzel-niemiecki-szorstkowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: German Wire-haired Pointing Dog; numer FCI: 98.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('wyzel-niemiecki-dlugowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: German Long-haired Pointing Dog; numer FCI: 117.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('griffon-korthalsa', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Wire-haired Pointing Griffon Korthals; numer FCI: 107.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('braque-francais-typ-pirenejski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: French Pointing Dog - Pyrenean Type; numer FCI: 134.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('braque-francais-typ-gaskonski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: French Pointing Dog - Gascogne Type; numer FCI: 133.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('braque-d-auvergne', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Braque d Auvergne; numer FCI: 180.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('braque-du-bourbonnais', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Braque du Bourbonnais; numer FCI: 179.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('braque-saint-germain', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Braque Saint-Germain; numer FCI: 115.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('wyzel-wegierski-szorstkowlosy', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Hungarian Wire-haired Pointer; numer FCI: 239.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('spaniel-pikardyjski-niebieski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Blue Picardy Spaniel; numer FCI: 106.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25'),
  ('spaniel-pikardyjski', 'FCI', 'Fédération Cynologique Internationale', 1, 'recognized', 'Zweryfikowano w oficjalnej nomenklaturze FCI. Nazwa w zrodle: Picardy Spaniel; numer FCI: 108.', 'https://www.fci.be/en/Nomenclature/', '2026-06-25')
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
  ('clumber-spaniel'),
  ('field-spaniel'),
  ('sussex-spaniel'),
  ('irish-water-spaniel'),
  ('curly-coated-retriever'),
  ('hiszpanski-pies-wodny'),
  ('wetterhoun'),
  ('drentsche-patrijshond'),
  ('maly-munsterlander'),
  ('duzy-munsterlander'),
  ('bracco-italiano'),
  ('spinone-italiano'),
  ('epagneul-breton'),
  ('wyzel-niemiecki-krotkowlosy'),
  ('wyzel-niemiecki-szorstkowlosy'),
  ('wyzel-niemiecki-dlugowlosy'),
  ('griffon-korthalsa'),
  ('braque-francais-typ-pirenejski'),
  ('braque-francais-typ-gaskonski'),
  ('braque-d-auvergne'),
  ('braque-du-bourbonnais'),
  ('braque-saint-germain'),
  ('wyzel-wegierski-szorstkowlosy'),
  ('spaniel-pikardyjski-niebieski'),
  ('spaniel-pikardyjski')
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

