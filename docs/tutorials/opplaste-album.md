# Introduksjon

For å laste opp filer til sputifu trenger du 3 programmer.

1. [Nicotine+](https://nicotine-plus.org/) - brukes til å laste ned musikk.
2. [Picard](https://picard.musicbrainz.org/) - brukes til å tagge musikkfilene dine.
3. [FileZilla](https://filezilla-project.org/) - brukes til å laste opp filene til sputifu.

# Arbeidsflyt

## Mappestruktur

Det blir fort mange filer å holde styr på!  
Jeg anbefaler derfor på det sterkeste å bruke følgende mappestrukturen for å holde kontroll på sysakene.

```text
Musikk/
├── originaler/      # Mappe for originaler - før de er modifisert av picard.
│ │                  # Sorteres etter hvor originalene er hentet fra.
│ │
│ ├── bibliotek/     # Filer som du har fra før av
│ ├── soulseek/      # Filer hentet fra soulseek
│ └── torrent/       # Filer hentet fra torrent
│
├── picard/
│ ├── arbeidsbenk/   # Filer som picard skal endre
│ └── resultat/      # Filer som har blitt endret av picard
│
└── sputifu
  ├── opplastingkø/  # Filer som du skal laste opp til sputifu
  └── server/        # Filer som har blitt lastet opp til sputifu
```

## Overordnet framgangsmetode

1. Last ned et album via Nicotine+.

2. **Kopier** albumet fra `originaler/soulseek` mappen til `picard/arbeidsbenk`
    - **Det er veldig viktig at du kopierer!** Picard endrer permanent på filene. Hvis du gjør noe feil er det nyttig å ha tilgang på originalen.

3. I picard, last inn albumet fra `picard/arbeidsbenk`.
    - Obs: Last inn kun ett album om gangen! Da funker picard best.

4. Sjekk at picard bekrefter at du har alle sanger i albumet.

5. Sjekk at informasjonen som picard finner om albumet ser riktig ut.

6. Fjern eventuelt tagger som er rot.  
   _Comment_ taggen pleier for eksempel ofte å inneholde rot.

7. Legg eventuelt til tagger som du ønsker.

8. Lagre albumet i picard. Albumet fjerens da fra arbeindsbenken og lagres i `picard/resultat`.

9. Sjekk at resultatet følger [navnekonvensjonen vår](../regler.md#navnekonvensjon).
    - Vanlige album er nesten alltid i orden.
    - Album fram film, spill, og TV-serier krever manuelle justeringer.
    - Samlealbum krever ofte justeringer.

10. Flytt albumet fra `picard/resultat` til `sputifu/opplastingkø`.

11. Last opp albummet med FileZilla.

12. Etter at opplastingen er ferdig. Flytt albumet til `sputifu/server`

13. Sjekk sputifu og se at alt ser riktig ut.
    - Sputifu skanner etter nye filer hvert 5 minutt fra kl. 00:00.
    - Hvis du har lastet opp veldig masse kan det ta sånn ca 30 sekunder for sputifu å fullføre skanningen.

14. Var det noe som ikke så riktig ut? Kopier albumet fra `sputifu/server` til `picard/arbeidsbenk` og start fra punkt 3.

# Oppsett

Følg disse guidene:

- [Nicotine+](./nicotine+.md)
- [Picard](./picard.md)
- [FileZilla](./)
