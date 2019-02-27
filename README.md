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

## Opis

Tutaj to wszystkie tematy są praktycznie identyczne więc ARQ + FEC powinno wejść w miarę gładko. PSK raczej też trzeba się pobawić wszystkimi możliwymi parametrami fali i na tej podstawie zrobić wykresiki i obliczyć ilości skutecznie przesłanych bitów.

## Transmisja w systemie  ARQ (Automatic Repeat Request)

### Key points

- bit parzystości
- ilośc bitów danych transmitowanych w jednostce czasu
- długość pakietu

## Transmisja w systemie FEC (Forward Error Correctioin)

### Key points

- algorytm głosujący
- ilość dodawanych bitów
- inny sposób dodawania bitów niż w prezentacji

A tutaj wykładzik o ARQ + FEC [here](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/niezawodnosc_w11_12.pdf).

## Przesyłanie informacji z wykorzystaniem modulacji PSK (Phase-Shift Keying)

### Key points

- ilość skutecznie przesłanych bitów w trakcie jednego okresu fali nośnej
- efektywne kodowanie informacji
- analiza wszystkich parametrów fali nośnej

Referencje apropo PSK z prezentacji jarnickiego [here](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/transmisja_cyfrowa_wyklad.pdf).

## Model Markowa –analiza wpływu napraw prewencyjnych na niezawodność (preventivemaintenanceplanning) –wg Wykładu 8

To jest też ciekawy temat, bo można połączyć prezentację Maciejewskiego z prezentacjami Wody i jest tam strasznie dużo informacji o tym. Tylko zastanawiam się czy to ma być coś analogicznego do tego co pokazywał Maciejewski na [wykładzie](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/niezawodnosc_w6.pdf). Jeśli tak to jest duża część już zrobiona na prezentacjach + jest podane co trzeba pokolei liczyć.

Problem jest tylko taki, że jest napisane że to się odnosi do wykładu 8 a tam to niby jest ale tak nie do końca więc trzeba by się dopytać o co dokładnie chodzi ale nie wydaje się bardzo trudne.

Moim zdaniem tutaj trzeba jechać z prezentacji Maciejewskiego i liczyć to co ona tam powypisywał.

### Key points

- Procedura analizy niezawodności systemu opisanego modelem Markowa
- intensywności przejść pomiędzy stanami
- macierz intensywności
- wektor prawdopodobieństw
- współczynnik gotowości systemu

[Tutaj](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/niezawodnosc_w6.pdf) to jest wszystko super po kolei opisane co i jak i czemu. Wygląda to całkiem przyjemnie na tej prezentacji.