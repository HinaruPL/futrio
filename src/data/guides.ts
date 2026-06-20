export type GuideCategory =
  | 'psy'
  | 'koty'
  | 'zywienie'
  | 'koszty'
  | 'pielegnacja'
  | 'zdrowie'
  | 'wyprawka'
  | 'wybor-rasy';

export type Guide = {
  slug: string;
  title: string;
  description: string;
  category: GuideCategory;
  categoryLabel: string;
  intro: string;
  updatedAt: string;
  readingTime: string;
  relatedBreedSlugs?: string[];
  sections: {
    id: string;
    heading: string;
    body: string;
  }[];
  faq: {
    question: string;
    answer: string;
  }[];
};

const UPDATED_AT = '2026-06-19';

export const guides: Guide[] = [
  {
    slug: 'ile-kosztuje-utrzymanie-psa',
    title: 'Ile kosztuje utrzymanie psa? Praktyczny przewodnik dla przyszłego opiekuna',
    description:
      'Miesięczne i roczne koszty psa: karma, weterynarz, pielęgnacja, akcesoria, szkolenie i niespodziewane wydatki.',
    category: 'koszty',
    categoryLabel: 'Koszty',
    intro:
      'Koszt utrzymania psa zależy od wielkości, zdrowia, żywienia, miasta i stylu opieki. Ten poradnik pomaga ułożyć realistyczny budżet przed adopcją lub zakupem psa.',
    updatedAt: UPDATED_AT,
    readingTime: '9 min czytania',
    relatedBreedSlugs: [
      'labrador-retriever',
      'bernenski-pies-pasterski',
      'cane-corso',
      'buldog-francuski',
    ],
    sections: [
      {
        id: 'koszt-to-nie-tylko-karma',
        heading: 'Koszt psa to nie tylko karma',
        body:
          'Najłatwiej policzyć cenę karmy, ale pies generuje też koszty profilaktyki, akcesoriów, pielęgnacji, transportu i opieki w czasie wyjazdów. W praktyce budżet warto dzielić na wydatki stałe i rezerwę na sytuacje nagłe.\n\nPrzyszły opiekun powinien założyć, że pierwszy rok bywa droższy. Dochodzi wyprawka, nauka zasad, ewentualne konsultacje szkoleniowe oraz dopasowanie karmy i akcesoriów do konkretnego psa.',
      },
      {
        id: 'karma-i-przysmaki',
        heading: 'Karma, przysmaki i realne porcje',
        body:
          'Duży pies zwykle zjada więcej niż mały, ale sama masa ciała nie mówi wszystkiego. Aktywność, wiek, kastracja, zdrowie i jakość karmy wpływają na porcję oraz koszt miesięczny.\n\nDo budżetu wliczaj także przysmaki treningowe. Częsty błąd to kupowanie ich bez kontroli, a potem pomijanie ich w dziennym bilansie kalorii.',
      },
      {
        id: 'weterynarz-i-profilaktyka',
        heading: 'Weterynarz i profilaktyka',
        body:
          'Profilaktyka obejmuje szczepienia, odrobaczanie lub badania kału, ochronę przeciw pasożytom, kontrole zębów i okresowe badania. Koszty różnią się zależnie od miasta, lecz nie warto traktować ich jako dodatku opcjonalnego.\n\nPrzy starszym psie albo rasie z większym ryzykiem problemów zdrowotnych dobrze mieć osobną rezerwę. Informacje w Futrio mają charakter orientacyjny i nie zastępują konsultacji z lekarzem weterynarii.',
      },
      {
        id: 'pielegnacja-i-groomer',
        heading: 'Pielęgnacja i groomer',
        body:
          'Psy krótkowłose zwykle wymagają mniej wizyt u groomera, ale nadal potrzebują kontroli pazurów, uszu, skóry i zębów. Rasy z długą sierścią, podszerstkiem albo potrzebą strzyżenia mogą oznaczać regularny koszt pielęgnacji.\n\nJeśli planujesz rasę wymagającą częstego czesania, uwzględnij szczotki, kosmetyki i czas. Zaniedbania często kończą się większym wydatkiem niż spokojna rutyna.',
      },
      {
        id: 'szkolenie-i-opieka',
        heading: 'Szkolenie, spacery i opieka przy wyjazdach',
        body:
          'Konsultacja z trenerem nie jest porażką, tylko sposobem na uniknięcie problemów. Warto rozważyć ją szczególnie przy pierwszym psie, rasach aktywnych, dużych lub bardzo wrażliwych.\n\nDo kosztów dolicz opiekę podczas urlopu, petsittera albo hotel dla psów. To wydatek, o którym łatwo zapomnieć, dopóki nie pojawi się pierwszy wyjazd.',
      },
      {
        id: 'rezerwa',
        heading: 'Rezerwa na niespodziewane wydatki',
        body:
          'Nagła wizyta, uraz łapy, zatrucie, diagnostyka albo wymiana zniszczonych akcesoriów potrafią mocno zmienić budżet. Rozsądnie jest odkładać nawet niewielką kwotę co miesiąc.\n\nNie zakładaj, że młody pies zawsze będzie tani. Szczeniaki często wymagają wyprawki, nauki czystości, zabezpieczenia domu i częstszych kontroli.',
      },
    ],
    faq: [
      {
        question: 'Czy duży pies zawsze kosztuje więcej niż mały?',
        answer:
          'Zwykle karma, akcesoria i część usług są droższe przy dużym psie, ale finalny koszt zależy też od zdrowia, pielęgnacji i stylu opieki.',
      },
      {
        question: 'Czy można oszczędzać na profilaktyce?',
        answer:
          'Oszczędzanie na profilaktyce bywa pozorne. Regularne kontrole pomagają szybciej zauważyć problemy i skonsultować je z lekarzem weterynarii.',
      },
      {
        question: 'Czy kalkulator kosztów wystarczy do planowania budżetu?',
        answer:
          'Kalkulator jest punktem wyjścia. Warto dodać rezerwę na miasto, jakość karmy, pielęgnację i nagłe sytuacje.',
      },
      {
        question: 'Co najbardziej podnosi koszt utrzymania psa?',
        answer:
          'Najczęściej: duża masa ciała, regularny grooming, problemy zdrowotne, szkolenie, opieka przy wyjazdach i wysoka jakość karmy.',
      },
    ],
  },
  {
    slug: 'ile-kosztuje-utrzymanie-kota',
    title: 'Ile kosztuje utrzymanie kota? Karma, żwirek, weterynarz i wyprawka',
    description:
      'Koszty utrzymania kota: karma, żwirek, profilaktyka, drapaki, zabawki, transporter i opieka przy wyjazdach.',
    category: 'koszty',
    categoryLabel: 'Koszty',
    intro:
      'Kot bywa postrzegany jako zwierzę tańsze i mniej wymagające niż pies, ale nadal potrzebuje jakościowej diety, profilaktyki, bezpiecznego domu i sensownego wyposażenia.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['maine-coon', 'kot-brytyjski-krotkowlosy', 'ragdoll', 'kot-perski'],
    sections: [
      {
        id: 'stale-wydatki',
        heading: 'Stałe wydatki w opiece nad kotem',
        body:
          'Najczęstsze wydatki to karma, żwirek, profilaktyka, zabawki zużywalne i okresowa wymiana akcesoriów. Warto od początku liczyć je miesięcznie, a nie tylko przy pierwszych zakupach.\n\nKot domowy potrzebuje też środowiska, które pozwala mu drapać, obserwować, chować się i bawić. Brak takich elementów często kończy się problemami z nudą lub stresem.',
      },
      {
        id: 'karma-i-woda',
        heading: 'Karma, woda i kontrola masy ciała',
        body:
          'Koszt karmienia zależy od rodzaju karmy, masy kota, apetytu i zaleceń weterynaryjnych. Przy kotach warto szczególnie pamiętać o nawodnieniu i kontroli masy ciała.\n\nNie każdy kot sam reguluje jedzenie. Jeśli miska jest stale pełna, część kotów zaczyna przybierać na wadze, co zwiększa ryzyko kolejnych kosztów zdrowotnych.',
      },
      {
        id: 'zwirek-i-kuweta',
        heading: 'Żwirek, kuweta i higiena',
        body:
          'Żwirek to koszt stały, którego nie da się pominąć. W domu z kilkoma kotami potrzebujesz większej liczby kuwet i częstszej wymiany podłoża.\n\nKuweta powinna być wygodna, stabilna i regularnie sprzątana. Zbyt mała lub źle ustawiona kuweta może prowadzić do problemów z korzystaniem z niej.',
      },
      {
        id: 'profilaktyka',
        heading: 'Weterynarz i profilaktyka',
        body:
          'Kot niewychodzący także powinien mieć kontrolę zdrowia. Profilaktyka może obejmować szczepienia, badania kontrolne, stomatologię, zabezpieczenie przed pasożytami i konsultacje przy zmianach zachowania.\n\nInformacje mają charakter orientacyjny. Jeśli kot zmienia apetyt, wagę, zachowanie lub sposób korzystania z kuwety, warto skonsultować się z lekarzem weterynarii.',
      },
      {
        id: 'drapak-i-bezpieczenstwo',
        heading: 'Drapak, transporter i zabezpieczenia',
        body:
          'Dobry drapak nie jest ozdobą, tylko narzędziem do realizowania naturalnych potrzeb. Przy większych rasach, takich jak Maine Coon, powinien być stabilny i odpowiednio duży.\n\nDo budżetu dolicz transporter, zabezpieczenie okien lub balkonu oraz kryjówki. To wydatki, które bezpośrednio wpływają na bezpieczeństwo kota.',
      },
      {
        id: 'wyjazdy',
        heading: 'Opieka przy wyjazdach',
        body:
          'Kot nie powinien zostawać bez opieki na wiele dni. Petsitter, zaufana osoba lub hotel to koszt, który warto przewidzieć jeszcze przed urlopem.\n\nW przypadku kotów wrażliwych zmiana miejsca może być stresująca, dlatego często lepsza jest opieka w domu. To jednak wymaga wcześniejszej organizacji.',
      },
    ],
    faq: [
      {
        question: 'Czy kot niewychodzący jest dużo tańszy w utrzymaniu?',
        answer:
          'Może mieć mniej wydatków związanych z ryzykiem urazów, ale nadal potrzebuje karmy, żwirku, profilaktyki, drapaka i bezpiecznego domu.',
      },
      {
        question: 'Czy drapak jest konieczny?',
        answer:
          'Tak, drapanie jest naturalną potrzebą kota. Stabilny drapak może też ograniczyć niszczenie mebli.',
      },
      {
        question: 'Na czym nie warto oszczędzać?',
        answer:
          'Na bezpieczeństwie okien, transporterze, profilaktyce zdrowotnej i jakości podstawowej diety.',
      },
      {
        question: 'Czy kot rasowy kosztuje więcej?',
        answer:
          'Nie zawsze, ale niektóre rasy mogą wymagać większych akcesoriów, częstszej pielęgnacji lub dokładniejszej profilaktyki.',
      },
    ],
  },
  {
    slug: 'jak-wybrac-rase-psa',
    title: 'Jak wybrać rasę psa do swojego stylu życia?',
    description:
      'Jak ocenić czas, aktywność, mieszkanie, doświadczenie, dzieci, budżet i pielęgnację przed wyborem rasy psa.',
    category: 'wybor-rasy',
    categoryLabel: 'Wybór rasy',
    intro:
      'Dobry wybór rasy psa zaczyna się nie od wyglądu, lecz od szczerej oceny własnego trybu życia. Ten poradnik pomaga zadać właściwe pytania przed decyzją.',
    updatedAt: UPDATED_AT,
    readingTime: '10 min czytania',
    relatedBreedSlugs: ['labrador-retriever', 'border-collie', 'beagle', 'shih-tzu'],
    sections: [
      {
        id: 'czas',
        heading: 'Ile czasu naprawdę masz dla psa?',
        body:
          'Pies potrzebuje spacerów, karmienia, pielęgnacji, nauki, zabawy i odpoczynku. Jeśli codzienność jest bardzo napięta, rasa wymagająca pracy i ruchu może szybko stać się źródłem frustracji.\n\nNie licz tylko weekendów. Najważniejszy jest zwykły wtorek: poranek, praca, powrót do domu, obowiązki i wieczorny spacer.',
      },
      {
        id: 'aktywnosc',
        heading: 'Aktywność nie zawsze oznacza długie bieganie',
        body:
          'Rasy aktywne potrzebują nie tylko kilometrów, ale też zajęcia głowy. Border Collie, Husky czy Jack Russell Terrier mogą być trudne, jeśli dostają ruch bez nauki odpoczynku.\n\nZ drugiej strony mały pies nie zawsze jest łatwy. Yorkshire Terrier, Chihuahua czy Jamnik też potrzebują zasad, socjalizacji i sensownych spacerów.',
      },
      {
        id: 'mieszkanie',
        heading: 'Mieszkanie, sąsiedzi i samotność',
        body:
          'Wielkość psa nie jest jedynym kryterium do mieszkania. Liczą się hałaśliwość, pobudliwość, reakcja na samotność, potrzeba ruchu i umiejętność wyciszenia.\n\nZanim wybierzesz rasę, pomyśl o sąsiadach, windzie, schodach, dostępnych terenach spacerowych i tym, ile godzin pies będzie sam.',
      },
      {
        id: 'doswiadczenie',
        heading: 'Doświadczenie opiekuna ma znaczenie',
        body:
          'Początkujący opiekun nie musi wybierać wyłącznie najspokojniejszej rasy, ale powinien unikać decyzji podejmowanych pod wpływem mody. Silny, czujny lub bardzo niezależny pies wymaga dobrego prowadzenia.\n\nJeśli marzysz o trudniejszej rasie, zaplanuj szkolenie, socjalizację i wsparcie specjalisty od pierwszych tygodni.',
      },
      {
        id: 'dzieci',
        heading: 'Pies i dzieci: nie ma automatycznie idealnej rasy',
        body:
          'Rasa może zwiększać prawdopodobieństwo określonych cech, ale bezpieczeństwo zależy od konkretnego psa, wychowania, nadzoru dorosłych i zasad w domu.\n\nDzieci powinny wiedzieć, że pies ma prawo odpocząć, odejść i nie być dotykany podczas jedzenia. Dorosły odpowiada za obie strony tej relacji.',
      },
      {
        id: 'budzet-i-pielegnacja',
        heading: 'Budżet i pielęgnacja przed decyzją',
        body:
          'Rasa wpływa na koszt karmy, groomera, akcesoriów, profilaktyki i ewentualnego szkolenia. Długowłosy mały pies może wymagać większej pielęgnacji niż krótko ostrzyżony pies średniej wielkości.\n\nPrzed wyborem rasy policz nie tylko zakup lub adopcję, ale też miesięczny budżet i czas, który chcesz regularnie poświęcać.',
      },
    ],
    faq: [
      {
        question: 'Czy istnieje najlepsza rasa dla każdego?',
        answer:
          'Nie. Dobra rasa to taka, której potrzeby pasują do konkretnego domu, czasu, budżetu i doświadczenia opiekuna.',
      },
      {
        question: 'Czy mały pies jest zawsze łatwiejszy?',
        answer:
          'Nie. Mały pies może być pobudliwy, szczekliwy, wrażliwy albo wymagający pielęgnacji i szkolenia.',
      },
      {
        question: 'Czy aktywny pies nadaje się tylko dla sportowców?',
        answer:
          'Nie zawsze, ale potrzebuje regularnego ruchu, pracy umysłowej i nauki odpoczynku. Bez tego mogą pojawić się problemy.',
      },
      {
        question: 'Czy wygląd powinien decydować o wyborze?',
        answer:
          'Wygląd może być miły, ale nie powinien być głównym kryterium. Ważniejsze są temperament, zdrowie, pielęgnacja i codzienne potrzeby.',
      },
    ],
  },
  {
    slug: 'jaki-pies-do-mieszkania',
    title: 'Jaki pies do mieszkania? Na co patrzeć poza wielkością rasy',
    description:
      'Wybór psa do mieszkania: hałaśliwość, aktywność, samotność, potrzeby ruchu, sąsiedzi i codzienna rutyna.',
    category: 'wybor-rasy',
    categoryLabel: 'Wybór rasy',
    intro:
      'Pies do mieszkania nie musi być najmniejszy. Ważniejsze jest to, czy potrafi odpoczywać, jak reaguje na bodźce i czy opiekun może spełnić jego potrzeby.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['buldog-francuski', 'shih-tzu', 'cavalier-king-charles-spaniel', 'chihuahua'],
    sections: [
      {
        id: 'wielkosc',
        heading: 'Wielkość to tylko jeden element',
        body:
          'Mały pies może być głośny i bardzo aktywny, a większy pies może spokojnie przespać część dnia po dobrym spacerze. Metr kwadratowy nie zastąpi rutyny, ruchu i umiejętności wyciszenia.\n\nPrzy mieszkaniu liczy się też budowa psa. Rasy z problemami oddechowymi lub kręgosłupem mogą gorzej znosić schody, upały albo zbyt intensywny wysiłek.',
      },
      {
        id: 'halas',
        heading: 'Hałaśliwość i sąsiedzi',
        body:
          'Szczekanie w mieszkaniu szybko staje się problemem. Rasy czujne, pobudliwe albo źle znoszące samotność mogą wymagać szczególnie spokojnej nauki reakcji na dźwięki z klatki.\n\nNie chodzi o uciszanie psa za wszelką cenę. Chodzi o zrozumienie przyczyny: nuda, lęk, brak ruchu, za dużo bodźców albo brak nauki odpoczynku.',
      },
      {
        id: 'samotnosc',
        heading: 'Ile godzin pies będzie sam?',
        body:
          'Pies mieszkający w bloku często słyszy sąsiadów, windy i drzwi. Jeśli dodatkowo zostaje sam przez wiele godzin, może szybciej reagować szczekaniem lub niszczeniem.\n\nPrzed wyborem rasy zaplanuj stopniową naukę samotności, spacery przed wyjściem i bezpieczne miejsce odpoczynku.',
      },
      {
        id: 'spacery',
        heading: 'Spacery są ważniejsze niż metraż',
        body:
          'Ogród nie jest wymagany, jeśli pies ma wartościowe spacery. Z drugiej strony samo mieszkanie obok parku nie wystarczy, jeśli opiekun nie ma czasu z niego korzystać.\n\nDobrze sprawdzają się krótsze wyjścia higieniczne i przynajmniej jeden spokojniejszy spacer z węszeniem, nauką lub zabawą.',
      },
      {
        id: 'rutyna',
        heading: 'Rutyna i nauka odpoczynku',
        body:
          'Pies do mieszkania powinien uczyć się, że dom jest miejscem odpoczynku. Ciągła zabawa w środku może utrudniać wyciszenie i zwiększać pobudzenie.\n\nWarto od początku wprowadzić stałe pory spacerów, miejsce odpoczynku i proste zasady kontaktu z domownikami.',
      },
      {
        id: 'przyklady',
        heading: 'Przykłady ras, które warto oceniać indywidualnie',
        body:
          'Buldog francuski, Cavalier, Shih Tzu czy Chihuahua często są rozważane do mieszkań, ale każda z tych ras ma własne ograniczenia: pielęgnację, zdrowie, delikatność albo potrzebę bliskości.\n\nNie wybieraj rasy wyłącznie z listy „do bloku”. Sprawdź konkretną hodowlę, temperament, zdrowie i własny plan dnia.',
      },
    ],
    faq: [
      {
        question: 'Czy duży pies może mieszkać w bloku?',
        answer:
          'Tak, jeśli ma zapewniony ruch, odpoczynek i dobrą rutynę. Sam rozmiar nie przesądza o dopasowaniu do mieszkania.',
      },
      {
        question: 'Czy pies do mieszkania powinien być mało aktywny?',
        answer:
          'Nie zawsze. Ważniejsze jest, czy opiekun potrafi zaspokoić aktywność poza domem i nauczyć psa odpoczywać w mieszkaniu.',
      },
      {
        question: 'Czy szczeniak w bloku to dobry pomysł?',
        answer:
          'Może być, ale wymaga częstych wyjść, zabezpieczenia mieszkania, nauki czystości i cierpliwości sąsiadów.',
      },
      {
        question: 'Co jest największym błędem?',
        answer:
          'Wybór psa tylko po wielkości i pominięcie hałaśliwości, samotności, aktywności oraz realnego czasu opiekuna.',
      },
    ],
  },
  {
    slug: 'pies-dla-rodziny-z-dziecmi',
    title: 'Pies dla rodziny z dziećmi - jak wybrać mądrze i bezpiecznie',
    description:
      'Jak wybierać psa dla rodziny z dziećmi: temperament, wychowanie, nadzór dorosłych, energia, socjalizacja i granice.',
    category: 'psy',
    categoryLabel: 'Psy',
    intro:
      'Nie ma rasy, która automatycznie gwarantuje bezpieczną relację z dziećmi. Dobra decyzja łączy wybór psa, wychowanie, nadzór dorosłych i zasady w domu.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['golden-retriever', 'labrador-retriever', 'cavalier-king-charles-spaniel', 'beagle'],
    sections: [
      {
        id: 'brak-idealnej-rasy',
        heading: 'Nie ma automatycznie idealnej rasy dla dzieci',
        body:
          'Golden Retriever czy Labrador często kojarzą się z rodziną, ale każdy pies wymaga wychowania, odpoczynku i kontroli emocji. Młody, silny pies może przypadkiem przewrócić dziecko mimo dobrych intencji.\n\nZamiast szukać gwarancji, szukaj stabilnego temperamentu, odpowiedzialnego źródła psa i planu na codzienną opiekę.',
      },
      {
        id: 'rola-doroslych',
        heading: 'Dorośli odpowiadają za bezpieczeństwo',
        body:
          'Dziecko nie powinno być głównym opiekunem psa. Może pomagać, ale spacery, szkolenie, decyzje zdrowotne i nadzór należą do dorosłych.\n\nNajważniejsze jest pilnowanie sytuacji: jedzenie, sen, zabawki, ciasne przestrzenie i emocjonujące zabawy wymagają szczególnej ostrożności.',
      },
      {
        id: 'zasady-dla-dzieci',
        heading: 'Zasady dla dzieci',
        body:
          'Dziecko powinno wiedzieć, że psa nie ciągnie się za uszy, ogon ani sierść, nie przeszkadza podczas jedzenia i nie budzi na siłę. Pies ma prawo odejść.\n\nWarto uczyć spokojnego głaskania, zapraszania psa do kontaktu i kończenia zabawy, gdy pies staje się pobudzony.',
      },
      {
        id: 'energia',
        heading: 'Energia psa a rytm rodziny',
        body:
          'Aktywna rodzina może dobrze odnaleźć się z psem potrzebującym ruchu, ale energia dzieci i energia psa łatwo się nakręcają. Potrzebna jest nauka wyciszenia po zabawie.\n\nJeśli dom jest głośny i intensywny, wrażliwy pies może potrzebować własnej bezpiecznej przestrzeni.',
      },
      {
        id: 'socjalizacja',
        heading: 'Socjalizacja i codzienna rutyna',
        body:
          'Pies rodzinny powinien poznawać różne sytuacje spokojnie i stopniowo. Socjalizacja nie oznacza wrzucania psa w chaos, lecz budowanie dobrych skojarzeń.\n\nRutyna pomaga zarówno dzieciom, jak i psu. Stałe pory spacerów, odpoczynku i karmienia zmniejszają napięcie w domu.',
      },
      {
        id: 'adopcja-czy-szczeniak',
        heading: 'Szczeniak, dorosły pies czy adopcja?',
        body:
          'Szczeniak daje możliwość uczenia od początku, ale wymaga dużo pracy. Dorosły pies może mieć bardziej przewidywalny temperament, jeśli dobrze poznano jego historię i reakcje.\n\nPrzy adopcji warto szczerze opisać dom, wiek dzieci i doświadczenie. Dobra organizacja pomaga dobrać psa, który ma szansę odnaleźć się w rodzinie.',
      },
    ],
    faq: [
      {
        question: 'Czy Labrador zawsze jest dobry dla dzieci?',
        answer:
          'Nie zawsze. To często rodzinny pies, ale potrzebuje ruchu, nauki i nadzoru, zwłaszcza gdy jest młody i silny.',
      },
      {
        question: 'Czy dziecko może samo wyprowadzać psa?',
        answer:
          'Zależy od wieku dziecka, psa i otoczenia, ale odpowiedzialność zawsze pozostaje po stronie dorosłych.',
      },
      {
        question: 'Czy mały pies jest bezpieczniejszy przy dzieciach?',
        answer:
          'Nie musi. Małe psy bywają delikatne i mogą gorzej znosić gwałtowne zachowania dzieci.',
      },
      {
        question: 'Kiedy przerwać zabawę psa z dzieckiem?',
        answer:
          'Gdy pies jest pobudzony, unika kontaktu, warczy, chowa się, skacze lub dziecko przestaje przestrzegać zasad.',
      },
    ],
  },
  {
    slug: 'pies-dla-aktywnych',
    title: 'Pies dla aktywnych - rasy i potrzeby, które trzeba dobrze zrozumieć',
    description:
      'Aktywne rasy psów, codzienny ruch, praca umysłowa, sporty, ryzyko nudy i problemy behawioralne.',
    category: 'psy',
    categoryLabel: 'Psy',
    intro:
      'Aktywny pies może być świetnym towarzyszem, ale tylko wtedy, gdy jego potrzeby są dobrze rozumiane. Sama chęć do biegania nie wystarczy.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['border-collie', 'siberian-husky', 'jack-russell-terrier', 'beagle'],
    sections: [
      {
        id: 'aktywny-nie-znaczy-latwy',
        heading: 'Aktywny nie znaczy łatwy',
        body:
          'Rasy aktywne szybko uczą się dobrych i złych nawyków. Jeśli mają dużo energii, ale brak zasad, mogą szczekać, niszczyć, ciągnąć na smyczy albo szukać zajęcia samodzielnie.\n\nDobry opiekun aktywnego psa planuje ruch, pracę umysłową i odpoczynek. Wszystkie trzy elementy są równie ważne.',
      },
      {
        id: 'ruch',
        heading: 'Codzienny ruch musi być regularny',
        body:
          'Jednorazowa długa wyprawa w weekend nie zastąpi codziennej rutyny. Aktywny pies potrzebuje spacerów, eksploracji, węszenia i możliwości rozładowania napięcia.\n\nWarto dopasować aktywność do wieku i zdrowia. Szczeniak dużej rasy nie powinien być przeciążany, nawet jeśli ma dużo energii.',
      },
      {
        id: 'glowa',
        heading: 'Praca głową zmęczy inaczej niż kilometry',
        body:
          'Zabawy węchowe, nauka komend, tropienie, proste zadania i kontrola impulsów pomagają psu myśleć. To często skuteczniejsze niż dokładanie kolejnych kilometrów.\n\nJeśli pies po spacerze nadal jest pobudzony, problemem może być brak wyciszenia, a nie za mało biegania.',
      },
      {
        id: 'sport',
        heading: 'Sporty kynologiczne i bezpieczeństwo',
        body:
          'Agility, nosework, canicross czy obedience mogą być świetne, ale wymagają stopniowego przygotowania. Nie każdy pies powinien od razu skakać, ciągnąć lub intensywnie trenować.\n\nPrzy wątpliwościach dotyczących zdrowia, stawów lub kondycji warto skonsultować aktywność z lekarzem weterynarii.',
      },
      {
        id: 'nuda',
        heading: 'Nuda i problemy behawioralne',
        body:
          'Aktywny pies pozostawiony sam sobie może wymyślić własne zajęcia: gryzienie, kopanie, ucieczki, gonienie bodźców albo szczekanie. To nie złośliwość, lecz często efekt niezaspokojonych potrzeb.\n\nPlan dnia powinien być przewidywalny. Pies łatwiej odpoczywa, gdy wie, kiedy jest spacer, jedzenie i spokojny czas.',
      },
      {
        id: 'wybor-rasy',
        heading: 'Jak wybrać aktywną rasę dla siebie',
        body:
          'Border Collie, Husky, Jack Russell Terrier czy Beagle różnią się motywacją i stylem pracy. Jeden potrzebuje zadań z człowiekiem, inny tropienia, a jeszcze inny dużej samodzielności.\n\nZanim wybierzesz rasę, sprawdź jej historię i typowe zachowania. To często mówi więcej niż ogólne hasło „aktywny pies”.',
      },
    ],
    faq: [
      {
        question: 'Czy aktywny pies nadaje się do mieszkania?',
        answer:
          'Może, jeśli ma regularny ruch, pracę umysłową i uczy się odpoczywać w domu.',
      },
      {
        question: 'Czy bieganie wystarczy aktywnemu psu?',
        answer:
          'Nie zawsze. Wiele psów potrzebuje też węszenia, nauki, kontaktu z opiekunem i odpoczynku.',
      },
      {
        question: 'Czy aktywny pies jest dobry dla początkujących?',
        answer:
          'Może być trudny. Początkujący opiekun powinien zaplanować szkolenie i realny czas na codzienną pracę.',
      },
      {
        question: 'Jak poznać, że pies ma za mało zajęcia?',
        answer:
          'Może niszczyć, szczekać, być stale pobudzony, ciągnąć do bodźców lub mieć problem z odpoczynkiem.',
      },
    ],
  },
  {
    slug: 'pies-dla-poczatkujacych',
    title: 'Pies dla początkujących - jak uniknąć złego wyboru rasy',
    description:
      'Jak początkujący opiekun powinien myśleć o rasie, szkoleniu, rutynie, kosztach i temperamencie psa.',
    category: 'wybor-rasy',
    categoryLabel: 'Wybór rasy',
    intro:
      'Pierwszy pies nie musi być idealnie łatwy, ale powinien pasować do doświadczenia i gotowości opiekuna do nauki. Ranking ras nie zastąpi szczerego planu.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['cavalier-king-charles-spaniel', 'maltanczyk', 'pudel', 'labrador-retriever'],
    sections: [
      {
        id: 'ranking-to-za-malo',
        heading: 'Ranking ras to za mało',
        body:
          'Listy „najlepszych psów dla początkujących” bywają pomocne, ale są uproszczeniem. Ten sam pies może być łatwy w jednym domu i trudny w drugim.\n\nZamiast szukać pewniaka, sprawdź potrzeby rasy, temperament konkretnego psa i własną gotowość do szkolenia.',
      },
      {
        id: 'rutyna',
        heading: 'Rutyna pomaga początkującym',
        body:
          'Pierwszy pies łatwiej odnajduje się w domu, który ma przewidywalny rytm. Stałe pory spacerów, odpoczynku, karmienia i nauki zmniejszają chaos.\n\nJeśli domownicy mają różne zasady, pies szybko się gubi. Warto ustalić je przed pojawieniem się psa.',
      },
      {
        id: 'temperament',
        heading: 'Temperament ważniejszy niż moda',
        body:
          'Rasa popularna w internecie nie musi pasować do początkującego opiekuna. Psy bardzo czujne, niezależne, silne lub reaktywne wymagają większej wiedzy i spokoju.\n\nDobry wybór to pies, którego potrzeby jesteś w stanie spełnić także w gorszym tygodniu, nie tylko w idealnym planie.',
      },
      {
        id: 'szkolenie',
        heading: 'Szkolenie od pierwszych dni',
        body:
          'Początkujący opiekun często odkłada szkolenie, bo pies jest mały lub „jeszcze się uczy”. Tymczasem proste zasady od początku są łatwiejsze niż naprawianie nawyków po miesiącach.\n\nWarto skorzystać z zajęć lub konsultacji, zwłaszcza gdy pojawia się lęk, szczekanie, ciągnięcie na smyczy albo trudność z samotnością.',
      },
      {
        id: 'koszty',
        heading: 'Koszty pierwszego psa',
        body:
          'Pierwszy pies oznacza wyprawkę, akcesoria, profilaktykę, karmę, ewentualne szkolenie i rezerwę na błędy zakupowe. Nie wszystko trzeba kupić od razu, ale podstawy muszą być dobre.\n\nTańsze akcesorium, które jest niewygodne lub nietrwałe, często szybko trzeba wymienić.',
      },
      {
        id: 'pomoc',
        heading: 'Kiedy poprosić o pomoc',
        body:
          'Nie czekaj, aż problem urośnie. Wczesna konsultacja z trenerem lub behawiorystą może pomóc zrozumieć zachowanie psa i uniknąć frustracji.\n\nPrzy problemach zdrowotnych, bólu, nagłej zmianie zachowania lub apetycie potrzebna jest konsultacja z lekarzem weterynarii.',
      },
    ],
    faq: [
      {
        question: 'Czy Labrador to dobry pierwszy pies?',
        answer:
          'Może być, jeśli opiekun ma czas na ruch, naukę i kontrolę jedzenia. To nie jest pies bezobsługowy.',
      },
      {
        question: 'Czy mały pies jest najlepszy na start?',
        answer:
          'Nie zawsze. Małe psy też wymagają zasad, socjalizacji i pielęgnacji.',
      },
      {
        question: 'Czy warto iść na szkolenie z pierwszym psem?',
        answer:
          'Tak, szczególnie jeśli opiekun chce nauczyć się komunikacji, pracy na smyczy i spokojnego budowania zasad.',
      },
      {
        question: 'Czego unikać przy pierwszym psie?',
        answer:
          'Impulsywnego wyboru po wyglądzie, pomijania kosztów, braku zasad i odkładania socjalizacji.',
      },
    ],
  },
  {
    slug: 'kot-do-mieszkania',
    title: 'Kot do mieszkania - jak przygotować dom i wybrać rasę',
    description:
      'Jak przygotować mieszkanie dla kota: drapaki, kuweta, zabawa, bezpieczeństwo okien, samotność i temperament rasy.',
    category: 'koty',
    categoryLabel: 'Koty',
    intro:
      'Kot domowy potrzebuje więcej niż miski i kuwety. Dobre mieszkanie dla kota daje bezpieczeństwo, możliwość drapania, zabawy, obserwacji i odpoczynku.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['kot-brytyjski-krotkowlosy', 'ragdoll', 'maine-coon', 'kot-perski'],
    sections: [
      {
        id: 'bezpieczenstwo',
        heading: 'Bezpieczne okna i balkon',
        body:
          'Zabezpieczenie okien i balkonu to jedna z najważniejszych rzeczy przed przyjęciem kota. Nawet spokojny kot może skoczyć za ptakiem, owadem lub przestraszyć się nagłego dźwięku.\n\nNie traktuj uchylonego okna jako bezpiecznego. Dla kota może być pułapką i źródłem poważnego urazu.',
      },
      {
        id: 'kuweta',
        heading: 'Kuweta i spokojne miejsce',
        body:
          'Kuweta powinna stać w miejscu dostępnym, ale nie w centrum hałasu. Kot potrzebuje poczucia bezpieczeństwa podczas korzystania z niej.\n\nPrzy większym mieszkaniu albo kilku kotach warto rozważyć więcej niż jedną kuwetę. Brudna, za mała lub źle ustawiona kuweta może powodować problemy.',
      },
      {
        id: 'drapak',
        heading: 'Drapak i przestrzeń pionowa',
        body:
          'Drapak pozwala kotu rozciągać ciało, znaczyć teren i rozładować napięcie. Powinien być stabilny, zwłaszcza przy większych rasach.\n\nKoty lubią obserwować dom z wysokości. Półki, wysoki drapak lub bezpieczne parapety mogą znacząco poprawić komfort życia kota.',
      },
      {
        id: 'zabawa',
        heading: 'Zabawa to codzienna potrzeba',
        body:
          'Kot mieszkający w domu nadal ma potrzeby łowieckie. Krótkie sesje z wędką, zabawki na jedzenie i spokojna rutyna pomagają uniknąć nudy.\n\nNie zostawiaj wszystkich zabawek stale na podłodze. Rotacja zabawek sprawia, że dłużej pozostają interesujące.',
      },
      {
        id: 'samotnosc',
        heading: 'Samotność i rytm domu',
        body:
          'Koty różnią się potrzebą kontaktu. Ragdoll może szukać bliskości częściej niż bardziej niezależny kot, ale każdy kot potrzebuje stabilnego środowiska.\n\nJeśli często wyjeżdżasz, zaplanuj opiekę. Kot nie powinien zostawać na wiele dni tylko z dosypaną karmą.',
      },
      {
        id: 'rasa',
        heading: 'Rasa a temperament',
        body:
          'Rasa może podpowiedzieć pewne cechy, ale nie zastępuje poznania konkretnego kota. Maine Coon, Ragdoll, kot perski i Bengal mają zupełnie inne potrzeby.\n\nPrzed wyborem rasy sprawdź pielęgnację, aktywność, wielkość akcesoriów i typowe wymagania środowiskowe.',
      },
    ],
    faq: [
      {
        question: 'Czy kot w mieszkaniu jest nieszczęśliwy?',
        answer:
          'Nie musi być, jeśli mieszkanie jest bezpieczne, ciekawe i daje możliwość zabawy, drapania oraz odpoczynku.',
      },
      {
        question: 'Czy trzeba zabezpieczyć okna?',
        answer:
          'Tak. To jedna z podstawowych zasad bezpieczeństwa kota domowego.',
      },
      {
        question: 'Czy kot potrzebuje spacerów?',
        answer:
          'Nie każdy. Ważniejsze jest bezpieczne środowisko, zabawa i realizacja naturalnych potrzeb w domu.',
      },
      {
        question: 'Jaki kot jest najlepszy do mieszkania?',
        answer:
          'Taki, którego temperament, aktywność i pielęgnacja pasują do rytmu domu oraz możliwości opiekuna.',
      },
    ],
  },
  {
    slug: 'jak-karmic-psa-podstawy',
    title: 'Jak karmić psa? Podstawy żywienia bez mitów i przesady',
    description:
      'Podstawy karmienia psa: porcje, kalorie, skład karmy, wiek, aktywność, masa ciała, smakołyki i zmiana karmy.',
    category: 'zywienie',
    categoryLabel: 'Żywienie',
    intro:
      'Dobre żywienie psa nie musi być skomplikowane, ale wymaga obserwacji. Porcja zależy od psa, nie tylko od tabeli na opakowaniu.',
    updatedAt: UPDATED_AT,
    readingTime: '9 min czytania',
    relatedBreedSlugs: ['labrador-retriever', 'beagle', 'buldog-francuski', 'border-collie'],
    sections: [
      {
        id: 'punkt-wyjscia',
        heading: 'Tabela karmy to punkt wyjścia',
        body:
          'Dawkowanie z opakowania pomaga zacząć, ale nie zastępuje obserwacji sylwetki, energii i stolca psa. Dwa psy o tej samej wadze mogą potrzebować różnych porcji.\n\nPo zmianie karmy lub aktywności warto przez kilka tygodni kontrolować masę ciała i kondycję.',
      },
      {
        id: 'kalorie',
        heading: 'Kalorie, aktywność i wiek',
        body:
          'Szczeniak, dorosły pies i senior mają różne potrzeby. Aktywny pies sportowy potrzebuje innego podejścia niż pies kanapowy po kastracji.\n\nKalkulator kalorii może pomóc oszacować start, ale wynik nie jest receptą. Przy chorobach, nadwadze lub specjalnych potrzebach dietę warto omówić z lekarzem weterynarii.',
      },
      {
        id: 'sklad',
        heading: 'Jak patrzeć na skład karmy',
        body:
          'Nie oceniaj karmy tylko po jednym haśle z przodu opakowania. Sprawdź skład, deklarację analityczną, przeznaczenie i to, czy karma jest pełnoporcjowa.\n\nNie ma jednej idealnej karmy dla wszystkich psów. Liczy się tolerancja, jakość, dostępność i dopasowanie do konkretnego zwierzęcia.',
      },
      {
        id: 'smakolyki',
        heading: 'Smakołyki też mają kalorie',
        body:
          'Przysmaki treningowe są przydatne, ale łatwo nimi przekarmić psa. Jeśli używasz ich dużo, zmniejsz porcję głównego jedzenia albo wybieraj mniejsze nagrody.\n\nSzczególnie uważać warto przy rasach z dużym apetytem, takich jak Labrador czy Beagle.',
      },
      {
        id: 'zmiana-karmy',
        heading: 'Jak zmieniać karmę',
        body:
          'Nagła zmiana karmy może skończyć się problemami trawiennymi. Zwykle lepiej mieszać starą i nową karmę przez kilka dni, stopniowo zwiększając udział nowej.\n\nJeśli pies reaguje biegunką, wymiotami, świądem lub spadkiem apetytu, warto skonsultować sytuację z lekarzem weterynarii.',
      },
      {
        id: 'mity',
        heading: 'Mity i skrajności',
        body:
          'Żywienie psów często wywołuje skrajne opinie. W praktyce najważniejsze są bezpieczeństwo, kompletność diety, tolerancja psa i regularna kontrola kondycji.\n\nNie wprowadzaj restrykcyjnych diet pod wpływem internetu. Jeśli chcesz karmić niestandardowo, skonsultuj plan ze specjalistą.',
      },
    ],
    faq: [
      {
        question: 'Ile razy dziennie karmić psa?',
        answer:
          'To zależy od wieku, zdrowia i trybu życia. Dorosłe psy często jedzą 2 posiłki dziennie, ale nie jest to jedyna możliwość.',
      },
      {
        question: 'Czy pies może jeść tylko suchą karmę?',
        answer:
          'Może, jeśli karma jest pełnoporcjowa i dobrze tolerowana, ale warto pilnować nawodnienia i kondycji.',
      },
      {
        question: 'Jak poznać, że pies je za dużo?',
        answer:
          'Przybiera na wadze, traci talię, szybciej się męczy albo dostaje dużo przysmaków poza porcją główną.',
      },
      {
        question: 'Czy kalkulator kalorii wystarczy?',
        answer:
          'Nie. To narzędzie orientacyjne, które trzeba łączyć z obserwacją psa i ewentualną konsultacją weterynaryjną.',
      },
    ],
  },
  {
    slug: 'jak-karmic-kota-podstawy',
    title: 'Jak karmić kota? Podstawy żywienia kota domowego',
    description:
      'Podstawy karmienia kota: mięsożerność, mokra i sucha karma, woda, kontrola masy ciała oraz częste błędy.',
    category: 'zywienie',
    categoryLabel: 'Żywienie',
    intro:
      'Kot jest mięsożercą, ale praktyczne karmienie kota domowego wymaga czegoś więcej niż wyboru przypadkowej karmy. Ważne są nawodnienie, masa ciała i stała obserwacja.',
    updatedAt: UPDATED_AT,
    readingTime: '9 min czytania',
    relatedBreedSlugs: ['kot-brytyjski-krotkowlosy', 'maine-coon', 'ragdoll', 'bengal'],
    sections: [
      {
        id: 'miesozernosc',
        heading: 'Kot jest mięsożercą',
        body:
          'Koty mają inne potrzeby niż psy. W diecie ważne jest odpowiednie białko, tłuszcz, tauryna i kompletność karmy. Nie warto przenosić zasad żywienia psa bezpośrednio na kota.\n\nKarma powinna być dopasowana do wieku, zdrowia i aktywności kota. Przy chorobach dietę trzeba omówić z lekarzem weterynarii.',
      },
      {
        id: 'mokra-sucha',
        heading: 'Mokra i sucha karma',
        body:
          'Mokra karma wspiera nawodnienie, a sucha bywa wygodna, ale łatwo przesadzić z jej ilością. Wybór zależy od kota, budżetu i zaleceń zdrowotnych.\n\nNie zakładaj, że kot sam wypije tyle wody, ile potrzebuje. Wiele kotów pije mało, dlatego forma karmy i dostęp do świeżej wody mają znaczenie.',
      },
      {
        id: 'porcje',
        heading: 'Porcje i masa ciała',
        body:
          'Kot żyjący w mieszkaniu może mieć mniej ruchu niż kot wychodzący. Jeśli stale dosypujesz jedzenie, trudno zauważyć, ile naprawdę zjada.\n\nRegularne ważenie i obserwacja sylwetki pomagają wykryć nadwagę wcześniej. Dotyczy to szczególnie kotów spokojniejszych i po kastracji.',
      },
      {
        id: 'woda',
        heading: 'Woda i nawyki picia',
        body:
          'Miski z wodą warto ustawić w kilku miejscach, z dala od kuwety. Niektóre koty chętniej piją z fontanny, inne z szerokiej miski.\n\nNagła zmiana pragnienia, apetytu albo korzystania z kuwety powinna skłonić do konsultacji z lekarzem weterynarii.',
      },
      {
        id: 'bledy',
        heading: 'Częste błędy w karmieniu kota',
        body:
          'Do częstych błędów należą: przekarmianie suchą karmą, brak kontroli masy, zbyt szybkie zmiany diety i ignorowanie problemów z apetytem.\n\nNie warto też zakładać, że kot „wybrzydza” bez powodu. Nagła niechęć do jedzenia może mieć przyczynę zdrowotną.',
      },
      {
        id: 'zmiany',
        heading: 'Zmiany karmy bez chaosu',
        body:
          'Nową karmę najlepiej wprowadzać stopniowo i obserwować reakcję kota. Zbyt szybka zmiana może wywołać problemy trawienne lub niechęć do jedzenia.\n\nJeśli kot nie je, chudnie albo zachowuje się inaczej niż zwykle, nie czekaj długo z konsultacją.',
      },
    ],
    faq: [
      {
        question: 'Czy kot może jeść tylko suchą karmę?',
        answer:
          'To zależy od kota i karmy, ale trzeba szczególnie pilnować nawodnienia, porcji i zaleceń weterynaryjnych.',
      },
      {
        question: 'Czy mokra karma jest zawsze lepsza?',
        answer:
          'Nie zawsze w każdej sytuacji, ale często pomaga zwiększyć podaż wody. Ważna jest kompletność i tolerancja karmy.',
      },
      {
        question: 'Jak często ważyć kota?',
        answer:
          'Warto robić to regularnie, na przykład raz w miesiącu, a częściej przy odchudzaniu lub problemach zdrowotnych.',
      },
      {
        question: 'Czy kot powinien mieć stały dostęp do jedzenia?',
        answer:
          'Nie u każdego kota to się sprawdza. Część kotów przy stałym dostępie je za dużo.',
      },
    ],
  },
  {
    slug: 'kalkulator-kalorii-dla-psa-i-kota',
    title: 'Kalkulator kalorii dla psa i kota - jak rozumieć wynik?',
    description:
      'Jak działa orientacyjne zapotrzebowanie kaloryczne psa i kota, dlaczego wynik nie jest receptą i jak rozsądnie go używać.',
    category: 'zywienie',
    categoryLabel: 'Żywienie',
    intro:
      'Kalkulator kalorii pomaga zacząć planowanie żywienia, ale nie zna całej historii zwierzęcia. Wynik trzeba traktować jako punkt wyjścia.',
    updatedAt: UPDATED_AT,
    readingTime: '7 min czytania',
    relatedBreedSlugs: ['labrador-retriever', 'kot-brytyjski-krotkowlosy', 'maine-coon', 'beagle'],
    sections: [
      {
        id: 'orientacyjny-wynik',
        heading: 'Wynik jest orientacyjny',
        body:
          'Zapotrzebowanie kaloryczne zależy od masy ciała, wieku, aktywności, zdrowia, kastracji i indywidualnego metabolizmu. Kalkulator upraszcza te dane, żeby dać praktyczny punkt startu.\n\nNie traktuj wyniku jak sztywnej recepty. Najważniejsza jest obserwacja sylwetki, energii i samopoczucia zwierzęcia.',
      },
      {
        id: 'masa-ciala',
        heading: 'Masa ciała i kondycja',
        body:
          'Waga to tylko liczba. Dwa psy o tej samej masie mogą mieć inną budowę i poziom tkanki tłuszczowej. Dlatego warto patrzeć także na talię, żebra i ogólną kondycję.\n\nJeśli zwierzę ma nadwagę, niedowagę albo chorobę, plan żywienia warto skonsultować z lekarzem weterynarii.',
      },
      {
        id: 'aktywnosc',
        heading: 'Aktywność zmienia zapotrzebowanie',
        body:
          'Zwierzę aktywne może potrzebować więcej energii, ale nie każdy ruch oznacza automatycznie większe porcje. Krótki spacer higieniczny to co innego niż regularny trening.\n\nPo zmianie aktywności obserwuj masę ciała przez kilka tygodni i dopiero wtedy koryguj porcję.',
      },
      {
        id: 'etykieta-karmy',
        heading: 'Jak połączyć wynik z etykietą karmy',
        body:
          'Kalkulator podaje kalorie, a karma ma własną kaloryczność. Żeby policzyć porcję, trzeba sprawdzić, ile kcal ma 100 g lub porcja produktu.\n\nNie mieszaj kilku karm i przysmaków bez liczenia. Suma może być wyższa, niż wygląda na pierwszy rzut oka.',
      },
      {
        id: 'korekta',
        heading: 'Kiedy korygować wynik',
        body:
          'Jeśli zwierzę przybiera na wadze, chudnie, traci energię albo stale domaga się jedzenia, nie zakładaj od razu, że kalkulator się myli. Sprawdź porcje, przysmaki, aktywność i zdrowie.\n\nZmiany wprowadzaj stopniowo. Nagłe duże ograniczenia mogą być niebezpieczne, szczególnie u kotów.',
      },
      {
        id: 'konsultacja',
        heading: 'Kiedy potrzebna jest konsultacja',
        body:
          'Konsultacja jest ważna przy chorobach, ciąży, intensywnym sporcie, otyłości, niedowadze, problemach trawiennych i nagłej zmianie apetytu.\n\nInformacje mają charakter orientacyjny i nie zastępują diagnostyki ani indywidualnego planu żywieniowego.',
      },
    ],
    faq: [
      {
        question: 'Czy wynik kalkulatora to dokładna porcja karmy?',
        answer:
          'Nie. Wynik pomaga oszacować kalorie, ale porcję trzeba przeliczyć na konkretną karmę i obserwować zwierzę.',
      },
      {
        question: 'Dlaczego dwa psy tej samej wagi jedzą inaczej?',
        answer:
          'Różnią się aktywnością, wiekiem, metabolizmem, zdrowiem i składem ciała.',
      },
      {
        question: 'Czy można odchudzać kota według kalkulatora?',
        answer:
          'Odchudzanie kota warto prowadzić ostrożnie i najlepiej po konsultacji z lekarzem weterynarii.',
      },
      {
        question: 'Jak często sprawdzać wynik?',
        answer:
          'Po większych zmianach wagi, wieku, aktywności, karmy lub stanu zdrowia.',
      },
    ],
  },
  {
    slug: 'koszty-weterynarza-pies-kot',
    title: 'Koszty weterynarza u psa i kota - co warto uwzględnić w budżecie?',
    description:
      'Profilaktyka, szczepienia, badania, nagłe sytuacje, większe zabiegi i planowanie budżetu weterynaryjnego.',
    category: 'zdrowie',
    categoryLabel: 'Zdrowie',
    intro:
      'Opieka weterynaryjna to nie tylko nagłe choroby. Regularna profilaktyka pomaga planować budżet i szybciej reagować na niepokojące zmiany.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['labrador-retriever', 'maine-coon', 'buldog-francuski', 'kot-perski'],
    sections: [
      {
        id: 'profilaktyka',
        heading: 'Profilaktyka jako stały element budżetu',
        body:
          'Profilaktyka może obejmować szczepienia, ochronę przeciw pasożytom, badania kontrolne, stomatologię i konsultacje dietetyczne. Zakres zależy od gatunku, wieku, trybu życia i zaleceń lekarza.\n\nNie warto planować budżetu tak, jakby zwierzę nigdy nie chorowało. Nawet zdrowy pies lub kot potrzebuje okresowej kontroli.',
      },
      {
        id: 'badania',
        heading: 'Badania kontrolne',
        body:
          'Badania krwi, moczu, kału czy obrazowe mogą być potrzebne profilaktycznie lub przy objawach. U seniorów kontrole bywają częstsze.\n\nInformacje mają charakter orientacyjny i nie zastępują diagnostyki. O zakresie badań decyduje lekarz weterynarii po ocenie zwierzęcia.',
      },
      {
        id: 'nagłe-sytuacje',
        heading: 'Nagłe sytuacje',
        body:
          'Zatrucie, uraz, ciało obce, duszność, nagła apatia czy problemy z oddawaniem moczu mogą wymagać pilnej pomocy. Takie wizyty bywają droższe niż rutynowa kontrola.\n\nWarto mieć zapisany kontakt do najbliższej całodobowej placówki i rezerwę finansową.',
      },
      {
        id: 'zabiegi',
        heading: 'Zabiegi i stomatologia',
        body:
          'Kastracja, sanacja jamy ustnej, usuwanie zmian skórnych czy inne zabiegi mogą pojawić się w różnych momentach życia zwierzęcia. Koszt zależy od zakresu, narkozy, badań i opieki po zabiegu.\n\nPrzy planowych zabiegach warto zapytać, co dokładnie obejmuje wycena.',
      },
      {
        id: 'rasa',
        heading: 'Rasa i wiek a budżet',
        body:
          'Niektóre rasy wymagają szczególnie uważnej profilaktyki, na przykład przy stawach, sercu, oddechu, skórze lub zębach. Nie oznacza to pewnej choroby, ale warto planować kontrole.\n\nStarsze zwierzęta zwykle potrzebują więcej diagnostyki niż młode, nawet jeśli wyglądają dobrze.',
      },
      {
        id: 'ubezpieczenie',
        heading: 'Ubezpieczenie i rezerwa',
        body:
          'Ubezpieczenie zwierząt może być tematem do rozważenia, ale warunki różnią się między ofertami. Warto czytać wyłączenia, limity i okresy karencji.\n\nNiezależnie od ubezpieczenia dobrze mieć własną rezerwę. Najgorszy moment na szukanie pieniędzy to nagła sytuacja zdrowotna.',
      },
    ],
    faq: [
      {
        question: 'Czy młode zwierzę potrzebuje badań?',
        answer:
          'Zakres profilaktyki zależy od lekarza weterynarii, wieku, historii i trybu życia. Młody wiek nie oznacza braku kontroli.',
      },
      {
        question: 'Czy można przewidzieć koszty weterynarza?',
        answer:
          'Część stałych kosztów tak, ale nagłe sytuacje wymagają rezerwy.',
      },
      {
        question: 'Czy informacje z internetu wystarczą przy objawach?',
        answer:
          'Nie. Przy objawach potrzebna jest konsultacja z lekarzem weterynarii i diagnostyka.',
      },
      {
        question: 'Czy starszy pies lub kot zawsze choruje?',
        answer:
          'Nie zawsze, ale wraz z wiekiem rośnie znaczenie regularnych kontroli.',
      },
    ],
  },
  {
    slug: 'pielegnacja-psa',
    title: 'Pielęgnacja psa - sierść, pazury, uszy, zęby i codzienna rutyna',
    description:
      'Pielęgnacja psa: typy sierści, groomer, szczotkowanie, higiena, pazury, uszy, zęby i błędy początkujących.',
    category: 'pielegnacja',
    categoryLabel: 'Pielęgnacja',
    intro:
      'Pielęgnacja psa to nie tylko kąpiel. Regularna rutyna pomaga utrzymać komfort, szybciej zauważyć problemy i zmniejszyć stres przy zabiegach.',
    updatedAt: UPDATED_AT,
    readingTime: '8 min czytania',
    relatedBreedSlugs: ['golden-retriever', 'shih-tzu', 'maltańczyk', 'yorkshire-terrier'],
    sections: [
      {
        id: 'typ-siersci',
        heading: 'Typ sierści zmienia pielęgnację',
        body:
          'Krótka sierść, podszerstek, włos wymagający strzyżenia i sierść do trymowania to różne potrzeby. Jedna szczotka nie pasuje do każdego psa.\n\nPrzed wyborem rasy sprawdź, czy pielęgnacja wymaga groomera, codziennego czesania albo sezonowego intensywnego wyczesywania.',
      },
      {
        id: 'czesanie',
        heading: 'Czesanie lepiej robić regularnie',
        body:
          'Kilka krótkich sesji w tygodniu bywa lepsze niż długa walka raz na miesiąc. Pies powinien uczyć się spokojnego stania, dotyku i nagradzania za współpracę.\n\nKołtuny mogą ciągnąć skórę i powodować dyskomfort. Nie warto czekać, aż problem będzie wymagał radykalnego strzyżenia.',
      },
      {
        id: 'pazury',
        heading: 'Pazury, łapy i uszy',
        body:
          'Zbyt długie pazury mogą wpływać na komfort chodzenia. Łapy warto sprawdzać po spacerach, zwłaszcza zimą, po lesie albo po intensywnym ruchu.\n\nUszy wymagają obserwacji, szczególnie u ras z długimi uszami. Zaczerwienienie, brzydki zapach lub ból warto skonsultować z lekarzem weterynarii.',
      },
      {
        id: 'zeby',
        heading: 'Zęby i jama ustna',
        body:
          'Higiena zębów jest często pomijana, a problemy stomatologiczne mogą powodować ból i niechęć do jedzenia. Warto oswajać psa ze sprawdzaniem pyska.\n\nPrzy kamieniu, krwawieniu dziąseł lub nieprzyjemnym zapachu potrzebna jest konsultacja weterynaryjna.',
      },
      {
        id: 'kapiel',
        heading: 'Kąpiel bez przesady',
        body:
          'Psa kąpie się wtedy, gdy jest taka potrzeba, używając kosmetyków przeznaczonych dla psów. Zbyt częste lub źle dobrane kąpiele mogą podrażniać skórę.\n\nPo kąpieli ważne jest dokładne wysuszenie, szczególnie u psów z gęstą sierścią.',
      },
      {
        id: 'groomer',
        heading: 'Kiedy potrzebny jest groomer',
        body:
          'Groomer pomaga przy strzyżeniu, trymowaniu, trudnych kołtunach i pielęgnacji ras wymagających fachowej ręki. Warto przyzwyczajać psa do wizyt stopniowo.\n\nNie odkładaj pierwszej wizyty do momentu, gdy pies jest już bardzo skołtuniony lub zestresowany dotykiem.',
      },
    ],
    faq: [
      {
        question: 'Jak często czesać psa?',
        answer:
          'To zależy od sierści. Psy długowłose i z podszerstkiem zwykle wymagają częstszego czesania niż krótkowłose.',
      },
      {
        question: 'Czy każdego psa trzeba kąpać regularnie?',
        answer:
          'Nie według jednego harmonogramu. Kąpiel zależy od potrzeb psa, typu sierści i skóry.',
      },
      {
        question: 'Czy można samodzielnie obcinać pazury?',
        answer:
          'Można, jeśli opiekun wie, jak robić to bezpiecznie. Przy obawach warto poprosić groomera lub lekarza weterynarii.',
      },
      {
        question: 'Kiedy iść do weterynarza zamiast groomera?',
        answer:
          'Przy bólu, zmianach skórnych, stanie zapalnym, problemach z uszami, zębami lub nagłej reakcji na dotyk.',
      },
    ],
  },
  {
    slug: 'pielegnacja-kota',
    title: 'Pielęgnacja kota - sierść, pazury, kuweta i profilaktyka',
    description:
      'Pielęgnacja kota: czesanie, długowłose koty, pazury, kuweta, stres i spokojna rutyna.',
    category: 'pielegnacja',
    categoryLabel: 'Pielęgnacja',
    intro:
      'Koty dbają o siebie, ale to nie znaczy, że opiekun nie ma nic do zrobienia. Pielęgnacja kota powinna być spokojna, regularna i dopasowana do jego temperamentu.',
    updatedAt: UPDATED_AT,
    readingTime: '7 min czytania',
    relatedBreedSlugs: ['maine-coon', 'kot-perski', 'ragdoll', 'sfinks'],
    sections: [
      {
        id: 'czesanie',
        heading: 'Czesanie i typ sierści',
        body:
          'Koty długowłose i półdługowłose wymagają regularnego czesania, szczególnie za uszami, na brzuchu i portkach. Kołtuny mogą powodować dyskomfort i stres.\n\nKrótkowłose koty też mogą korzystać z czesania, zwłaszcza w okresie linienia.',
      },
      {
        id: 'stres',
        heading: 'Pielęgnacja bez walki',
        body:
          'Najlepiej zaczynać od krótkich sesji i kończyć, zanim kot się zdenerwuje. Przymus i pośpiech często utrwalają stres.\n\nWarto nagradzać spokojne zachowanie i używać narzędzi, które nie szarpią sierści.',
      },
      {
        id: 'pazury',
        heading: 'Pazury i drapanie',
        body:
          'Drapak jest podstawą, ale część kotów nadal potrzebuje skracania pazurów. Dotyczy to zwłaszcza kotów starszych, mniej aktywnych albo niewychodzących.\n\nJeśli nie wiesz, jak skrócić pazury bezpiecznie, poproś o pokaz lekarza weterynarii lub groomera.',
      },
      {
        id: 'kuweta',
        heading: 'Kuweta jako element higieny',
        body:
          'Czysta kuweta wpływa na komfort kota i pomaga szybciej zauważyć zmiany. Inny zapach, częstsze wizyty albo trudność z oddawaniem moczu wymagają uwagi.\n\nProblemy kuwetowe nie zawsze są złośliwością. Mogą wynikać ze stresu, bólu, złego ustawienia kuwety lub zdrowia.',
      },
      {
        id: 'sfinks',
        heading: 'Koty bez sierści też wymagają pielęgnacji',
        body:
          'Sfinks nie linieje jak kot długowłosy, ale jego skóra wymaga obserwacji i delikatnej pielęgnacji. Ważny jest też komfort termiczny.\n\nBrak sierści nie oznacza braku obowiązków, tylko inny rodzaj opieki.',
      },
      {
        id: 'profilaktyka',
        heading: 'Profilaktyka i obserwacja',
        body:
          'Podczas pielęgnacji można zauważyć guzki, strupy, łupież, bolesność, brzydki zapach z pyska lub zmianę zachowania. Takie objawy warto skonsultować z lekarzem weterynarii.\n\nRegularna rutyna pomaga kotu oswoić dotyk i ułatwia opiekę w starszym wieku.',
      },
    ],
    faq: [
      {
        question: 'Czy kota trzeba kąpać?',
        answer:
          'Zwykle nie, chyba że wymaga tego stan skóry, zabrudzenie albo specyfika rasy. Wątpliwości warto skonsultować.',
      },
      {
        question: 'Jak często czesać kota długowłosego?',
        answer:
          'Najczęściej regularnie kilka razy w tygodniu, a u niektórych kotów nawet codziennie.',
      },
      {
        question: 'Czy obcinać kotu pazury?',
        answer:
          'Często tak, szczególnie u kotów niewychodzących, starszych lub zaczepiających pazurami o tkaniny.',
      },
      {
        question: 'Co zrobić, jeśli kot nie daje się czesać?',
        answer:
          'Skrócić sesje, zmienić narzędzie, nagradzać spokój i nie doprowadzać do walki. Przy dużych kołtunach pomóc może specjalista.',
      },
    ],
  },
  {
    slug: 'wyprawka-dla-psa',
    title: 'Wyprawka dla psa - co kupić na start, a z czym można poczekać?',
    description:
      'Wyprawka dla psa: legowisko, smycz, obroża lub szelki, miski, karma, zabawki, transporter i produkty zbędne na start.',
    category: 'wyprawka',
    categoryLabel: 'Wyprawka',
    intro:
      'Dobra wyprawka dla psa ma ułatwić pierwsze dni, a nie zapełnić szafkę przypadkowymi gadżetami. Najpierw kup podstawy, resztę dopasuj po poznaniu psa.',
    updatedAt: UPDATED_AT,
    readingTime: '7 min czytania',
    relatedBreedSlugs: ['labrador-retriever', 'maltańczyk', 'border-collie', 'cane-corso'],
    sections: [
      {
        id: 'podstawy',
        heading: 'Podstawy na pierwszy dzień',
        body:
          'Na start potrzebujesz misek, karmy, smyczy, obroży lub szelek, adresówki, worków na odchody i miejsca do odpoczynku. Jeśli pies jedzie autem, zadbaj o bezpieczny transport.\n\nNie kupuj wszystkiego w jednym rozmiarze „na oko”. Szczególnie szelki i obroża muszą być dobrze dopasowane.',
      },
      {
        id: 'legowisko',
        heading: 'Legowisko i spokojne miejsce',
        body:
          'Legowisko powinno stać w miejscu, gdzie pies może odpocząć bez ciągłego zaczepiania. To ważne zwłaszcza w domu z dziećmi.\n\nNie każdy pies od razu pokocha legowisko. Warto budować dobre skojarzenia i nie używać go jako kary.',
      },
      {
        id: 'spacer',
        heading: 'Smycz, szelki i obroża',
        body:
          'Dobra smycz powinna być wygodna i bezpieczna. Automatyczna smycz nie zawsze jest najlepsza na początek, szczególnie przy nauce chodzenia i w ruchliwym miejscu.\n\nSzelki muszą pozwalać na swobodny ruch łopatki. Źle dobrane akcesoria mogą obcierać lub ograniczać ruch.',
      },
      {
        id: 'karma',
        heading: 'Karma i przysmaki',
        body:
          'Na początku warto mieć karmę, do której pies jest przyzwyczajony, i zmieniać ją stopniowo, jeśli jest taka potrzeba. Nagłe zmiany mogą powodować problemy trawienne.\n\nPrzysmaki treningowe powinny być małe. Duże nagrody szybko podbijają kalorie.',
      },
      {
        id: 'zabawki',
        heading: 'Zabawki i gryzaki',
        body:
          'Kilka bezpiecznych zabawek wystarczy na start. Wybieraj takie, których pies nie połknie i które pasują do jego siły gryzienia.\n\nZabawki warto rotować. Nadmiar rzeczy na podłodze nie zawsze zwiększa zainteresowanie psa.',
      },
      {
        id: 'poczekac',
        heading: 'Z czym można poczekać',
        body:
          'Nie musisz od razu kupować wielu kosmetyków, drogich gadżetów, kilku legowisk i pełnej kolekcji ubrań. Część potrzeb poznasz dopiero po kilku tygodniach.\n\nLepiej zostawić budżet na szkolenie, weterynarza i akcesoria dopasowane do realnego rozmiaru oraz temperamentu psa.',
      },
    ],
    faq: [
      {
        question: 'Czy lepsze są szelki czy obroża?',
        answer:
          'To zależy od psa, budowy i sytuacji. Często warto mieć oba rozwiązania, ale muszą być dobrze dopasowane.',
      },
      {
        question: 'Czy trzeba kupić transporter dla psa?',
        answer:
          'Przy małym psie lub podróżach może być bardzo przydatny. Duże psy też potrzebują bezpiecznego sposobu transportu.',
      },
      {
        question: 'Ile zabawek kupić na start?',
        answer:
          'Kilka bezpiecznych zabawek wystarczy. Ważniejsza jest wspólna zabawa i dopasowanie do psa.',
      },
      {
        question: 'Czy wyprawka dla szczeniaka różni się od wyprawki dla dorosłego psa?',
        answer:
          'Tak. Szczeniak może potrzebować częstszej wymiany rozmiarów i większego zabezpieczenia domu.',
      },
    ],
  },
  {
    slug: 'wyprawka-dla-kota',
    title: 'Wyprawka dla kota - kuweta, drapak, karma i bezpieczny dom',
    description:
      'Wyprawka dla kota: kuweta, żwirek, drapak, transporter, miski, kryjówki, zabezpieczenie okien i balkonu.',
    category: 'wyprawka',
    categoryLabel: 'Wyprawka',
    intro:
      'Wyprawka dla kota powinna przede wszystkim wspierać bezpieczeństwo i naturalne potrzeby: kuwetę, drapanie, chowanie się, obserwację i zabawę.',
    updatedAt: UPDATED_AT,
    readingTime: '7 min czytania',
    relatedBreedSlugs: ['maine-coon', 'ragdoll', 'kot-perski', 'bengal'],
    sections: [
      {
        id: 'kuweta',
        heading: 'Kuweta i żwirek',
        body:
          'Kuweta powinna być wygodna, stabilna i ustawiona w spokojnym miejscu. Dla dużych kotów wybieraj większe modele.\n\nŻwirek warto dobrać stopniowo. Niektóre koty źle reagują na zapachowe lub bardzo pylące podłoża.',
      },
      {
        id: 'drapak',
        heading: 'Drapak to nie dodatek',
        body:
          'Drapak realizuje naturalną potrzebę drapania, rozciągania i znaczenia terenu. Powinien być stabilny i atrakcyjny dla kota.\n\nPrzy większych rasach mały, lekki drapak może być bezużyteczny. Lepiej kupić mniej rzeczy, ale solidniejsze.',
      },
      {
        id: 'transport',
        heading: 'Transporter od pierwszego dnia',
        body:
          'Transporter jest potrzebny do bezpiecznego przewiezienia kota i wizyt u weterynarza. Powinien być stabilny, łatwy do czyszczenia i odpowiedni rozmiarem.\n\nWarto zostawić transporter w domu jako zwykły element otoczenia, żeby kot nie kojarzył go wyłącznie z podróżą.',
      },
      {
        id: 'miski',
        heading: 'Miski, woda i jedzenie',
        body:
          'Miski powinny być łatwe do mycia i ustawione z dala od kuwety. Część kotów woli szersze miski, które nie drażnią wibrysów.\n\nWodę warto postawić w kilku miejscach. Niektóre koty piją chętniej z fontanny, ale nie jest to obowiązek na pierwszy dzień.',
      },
      {
        id: 'bezpieczenstwo',
        heading: 'Zabezpieczenie okien i balkonu',
        body:
          'To jedna z najważniejszych rzeczy w kociej wyprawce. Bezpieczne siatki i blokady chronią przed upadkiem lub zaklinowaniem.\n\nNie czekaj z zabezpieczeniami do momentu, aż kot zacznie interesować się oknem. Wystarczy jeden impuls.',
      },
      {
        id: 'kryjowki',
        heading: 'Kryjówki i spokojny start',
        body:
          'Nowy kot może potrzebować czasu. Kryjówka, spokojny pokój startowy i ograniczenie bodźców pomagają mu poczuć się bezpiecznie.\n\nNie zmuszaj kota do kontaktu. Lepiej dać mu wybór i budować relację spokojnie.',
      },
    ],
    faq: [
      {
        question: 'Ile kuwet potrzebuje jeden kot?',
        answer:
          'Minimum jedną, ale w większym mieszkaniu lub przy problemach warto rozważyć dodatkową.',
      },
      {
        question: 'Czy mały drapak wystarczy?',
        answer:
          'Nie zawsze. Drapak powinien być stabilny i pozwalać kotu wygodnie się rozciągnąć.',
      },
      {
        question: 'Czy trzeba zabezpieczać balkon?',
        answer:
          'Tak, jeśli kot ma do niego dostęp. To kwestia bezpieczeństwa.',
      },
      {
        question: 'Co można dokupić później?',
        answer:
          'Część zabawek, dodatkowe legowiska, fontannę czy rozbudowane półki można dobrać po poznaniu kota.',
      },
    ],
  },
];

export function getAllGuides(): Guide[] {
  return guides;
}

export function getGuideBySlug(slug: string): Guide | undefined {
  return guides.find((guide) => guide.slug === slug);
}

export function getGuidesByCategory(category: GuideCategory): Guide[] {
  return guides.filter((guide) => guide.category === category);
}

export function getFeaturedGuides(limit = 6): Guide[] {
  const featuredSlugs = [
    'jak-wybrac-rase-psa',
    'ile-kosztuje-utrzymanie-psa',
    'ile-kosztuje-utrzymanie-kota',
    'jak-karmic-psa-podstawy',
    'jak-karmic-kota-podstawy',
    'wyprawka-dla-kota',
  ];

  return featuredSlugs
    .map((slug) => getGuideBySlug(slug))
    .filter((guide): guide is Guide => Boolean(guide))
    .slice(0, limit);
}

export function getRelatedGuides(currentSlug: string, limit = 3): Guide[] {
  const currentGuide = getGuideBySlug(currentSlug);
  const candidates = guides.filter((guide) => guide.slug !== currentSlug);

  if (!currentGuide) {
    return candidates.slice(0, limit);
  }

  return candidates
    .map((guide) => {
      const sameCategory = guide.category === currentGuide.category ? 2 : 0;
      const sharedBreeds =
        guide.relatedBreedSlugs?.filter((slug) =>
          currentGuide.relatedBreedSlugs?.includes(slug)
        ).length ?? 0;

      return {
        guide,
        score: sameCategory + sharedBreeds,
      };
    })
    .sort((first, second) => second.score - first.score)
    .map(({ guide }) => guide)
    .slice(0, limit);
}
