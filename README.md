# NiDUC

# TODO

- [x] Pretty GUI !
- [x] Check if 2f5 works good
- [x] Check if statistics are generated correctly
- [ ] Clear code and check references to functions
- [ ] Remove polish words from code !
- [ ] Adjust this readme to show what we have done so far ! 
- [x] Stay awesome :smile: ! 

## Transmisja w systemie  ARQ (Automatic Repeat Request)

### Key points

- bit parzystości
- ilośc bitów danych transmitowanych w jednostce czasu
- długość pakietu

A tutaj wykładzik o [ARQ](http://www.zsk.ict.pwr.wroc.pl/zsk/repository/dydaktyka/ndsc/wyklady/niezawodnosc_w11_12.pdf).

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

Projekt zostanie zrealizwany w środkowsku Matlab przy pomocy wbudowanych bibliotek oraz własnych implementacji.
