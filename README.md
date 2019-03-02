# NiDUC

## Intro

Uważam, że powiniśmy wybrać co najmniej dwa tematy bo jest spora szansa, że temacik już będzie zajęty, a w prezentacji jest napisane, że nie mogą się powtarzać.

## SLA - Model serwerowni – analiza parametrów usług, które można zaoferować klientom

To się wydaje całkiem w porządku, polukrowałem trochę przez prezentacje i znalazłem ten wykład o którym jest tam napisane:
[wyklad](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/niezawodnosc_w7_8.pdf) - trzeba poscroolować do dołu aż do drugiego wykładu i tam się wszystko zaczyna.

### Key points

- Availability
- Reliability
- MTBF
- MTBSI
- MTRS
- Obliczanie poziomu dostępności
- konfiguracja szeregowa
- konfiguracja równoległa
- Koszt niedostępności usługi

Jeśli dobrze to rozumiem to musimy sobie wymyślić jakąś taką mini infrastrukturę dla firmy np. host + server + kilka routerów + PC + jakaś replikacja danych powymyślać parametry poobliczać wszystkie te współczynniki i poczarówać coś z parametrami tak żeby nie było za drogo i jednocześnie wydajnie.

## Transmisja w systemie  ARQ (Automatic Repeat Request)

### Key points

- bit parzystości
- ilośc bitów danych transmitowanych w jednostce czasu
- długość pakietu

A tutaj wykładzik o ARQ [here](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/niezawodnosc_w11_12.pdf).

### Opis

Głównym celem projektu jest sprawdzenie metody stosowanej do korekcji oraz walidacji przesyłanych danych podczas przesyłu informacji w kanale telekomunikacyjnym - ARQ. Program pozwala symulować przesył danych w kanale, modyfikować konkretne wartości dotyczące przesyłanych sygnałów oraz pozwala na wyznaczenie statystyk dotyczących konkretnych parametrów. Na podstawie otrzymanych danych wyznaczony zostanie najbardziej optymalny oraz skuteczny protokół pozwalający osiągnąć największą skuteczność.

Protokoły ARQ które zostaną zastosowane :

- Go back N ARQ
- Stop and Wait ARQ
- *Selective protocol/Selective Reject ARQ

Różne sposoby kontroli błędów :

- Pairity bit
- two from five
- CRC 16 (kod cykliczny)
- *Hamming code implementation

Przykładowe modele kanału telekomunikacyjnego:

- Cyclic error channel
- Binary symmetric Channel

Badaniu zostaną poddane takie paramtery jak:

- skuteczność każdego z protokołów
- długość oraz ilość przesyłanych pakietów
- model kanału telekomunikacyjnego
- prędkość przesyłu danych

Projekt zostanie zrealizwany w środkowsku Matlab przy pomocy wbudowanych bibliotek oraz własnyc implementacji.