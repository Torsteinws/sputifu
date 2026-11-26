# Regler for sputifu

## Foretrukne filer

Vi har ikke noe filpoliti, men vi setter pris på om du laster opp filer av bra kvalitet:

- Helst last opp .flac filer
    - Minst 16 bit.
    - 24 bit er veldig flott! Men er ikke et krav.
        - Mennesker kan ikke høre forskjell på 16 bit og 24 bit, men man må ha 24 bit dersom man skal bruke lydfilen i en produksjon.

## Navnekonvensjon

Filer som lastes opp til sputifu skal følge denne navnekonvensjonen.

### Generel

Navnekonvensjon vår er: `artist/år - album/disk-spor sangtittel`

**Eksempel:** `Pink Floyd/1979 - The Wall/2-06 Comfortably Numb.flac`

### Film, Spill, TV-serier

Dersom albumet kommer fra film, spill eller en TV-serie, så bytter man ut `artist` med `franchise`.

**Eksempel:** `Star Wars/2005 - Star Wars: Episode III – Revenge of the Sith (Original Motion Picture Soundtrack)/05 General Grievous`

For å være konsekvent, gjelder dette også for film/spill/tv som ikke er del av en franchise.

**Eksempel:** `Interstellar/2014 - Interstellar`

### Andre detaljer

- `disk` skal droppes dersom det bare er 1 disk.
- Hvordan `spor` nummereres er avhengig av hvor mange spor det er på albumet.
    - Mindre enn 10 låter på albumet: første spor --> 1
    - Mindre enn 100, mer en 10: første spor --> 01
    - Mindre enn 1000, mer en 100: første spor --> 001
- `disk` følger den samme nummereringstrategien som `spor`
