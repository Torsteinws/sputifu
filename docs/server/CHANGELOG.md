# Changelog

Hensikten med dette dokumnentet er å ha et sted hvor vi fort og gæli kan skrive om ting som vi har gjort på serveren. Ikke overtenk; bare skriv, commit, send og glem.

Low-effort copy-paste av kommandoer som du har kjørt aksepteres som en gyldig oppføring i denne loggen.

----

# 23.11.2026

Added these configs to navidrome:

```toml
# Set imported playlists as public by default
DefaultPlaylistPublicVisibility = true

# Navidrome will exit with an error if it detects it’s running as root (UID 0). 
# This validation happens early, before any filesystem operations. 
EnforceNonRootUser = true
```

# 22.11.2026

- Hent sangtekster automatisk med [Navidrome Lyrcs Plugin](https://github.com/J0R6IT0/navidrome-lyrics-plugin)

