PRAGMA foreign_keys = OFF;

DROP TABLE IF EXISTS breed_content_sections_old;
ALTER TABLE breed_content_sections RENAME TO breed_content_sections_old;

CREATE TABLE breed_content_sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER NOT NULL,
  section_key TEXT NOT NULL CHECK (
    section_key IN (
      'character',
      'history',
      'for_whom',
      'home_and_apartment',
      'children_and_family',
      'activity',
      'grooming',
      'feeding',
      'health',
      'costs',
      'common_mistakes',
      'fun_facts',
      'faq'
    )
  ),
  heading TEXT NOT NULL,
  body TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 100,
  created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE,
  UNIQUE (breed_id, section_key)
);

INSERT OR IGNORE INTO breed_content_sections (id, breed_id, section_key, heading, body, sort_order, created_at, updated_at)
SELECT id, breed_id, section_key, heading, body, sort_order, created_at, updated_at
FROM breed_content_sections_old;

DROP TABLE breed_content_sections_old;

CREATE INDEX IF NOT EXISTS idx_breed_content_sections_breed_id ON breed_content_sections(breed_id);
CREATE INDEX IF NOT EXISTS idx_breed_content_sections_sort ON breed_content_sections(breed_id, sort_order);

PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS breed_faqs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER NOT NULL,
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE,
  UNIQUE (breed_id, question)
);
CREATE INDEX IF NOT EXISTS breed_faqs_breed_id_idx ON breed_faqs(breed_id);

CREATE TABLE IF NOT EXISTS breed_registry_recognitions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  breed_id INTEGER NOT NULL,
  organization_code TEXT NOT NULL,
  organization_name TEXT NOT NULL,
  recognized INTEGER NOT NULL DEFAULT 0,
  recognition_status TEXT,
  note TEXT,
  source_url TEXT,
  verified_at TEXT,
  created_at TEXT DEFAULT CURRENT_TIMESTAMP,
  updated_at TEXT DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (breed_id) REFERENCES breeds(id) ON DELETE CASCADE,
  UNIQUE (breed_id, organization_code)
);
CREATE INDEX IF NOT EXISTS breed_registry_recognitions_breed_id_idx ON breed_registry_recognitions(breed_id);
CREATE INDEX IF NOT EXISTS breed_registry_recognitions_org_idx ON breed_registry_recognitions(organization_code);


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
