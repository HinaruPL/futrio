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

