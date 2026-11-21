# Users

- navidrome
    - Har til hensikt å kjøre navidrome-programmet, og ikke noe mer.

## Groups

- sudo
- users

## Navidrome user

### Legacy quirk

Denne brukeren ble først satt opp som en systembruker.
Dette fant vi ut var en dårlig idé da vi skulle prøve å kjøre navidrome-programmet uten root privilegier. Vi tok derfor å migrerte brukeren til å bli en vanlig bruker.

Migreringen fra systembruker til vanlig bruker var ikke fullstendig, og vi har derfor noen quirks som vi lever med.

#### Kjente quirks

- Brukeren har uid og guid som er under 1000.
    - Vanlige brukere har uid og guid over 1000.
    - Dette kan potensielt breake scripts.

- Bytte til brukeren med `su navidrome` funker dårlig. Bytt heller med:
    ```bash
    sudo machinectl shell navidrome@.host
    ```

En dag vil noen komme å ta tak i dette, but it is not this day

#### Om migrasjonen

Disse stegene har blitt gjort for å migrere brukeren:

1. Simen gjorde udokumenterte ting, ...profit?
2. Enable linger:
    ```bash
    sudo loginctl enable-linger navidrome
    ```

# Programmer/tjenester

## Systemkonfigurering

- Kopier systemfiler

```bash
server/scripts/cp-to-server.sh
```

- Gjør endringer synlige for systemd:

```bash
sudo systemctl daemon-reload
```

## Fail2ban

```bash
sudo systemctl enable fail2ban --now
```

## nginx

TOOD...

### certbot

TODO...

## Ftp box

```bash
sudo systemctl enable mnt-ftp.automount --now
```

## Navidrome program

```bash
# Log in as navidrome user
sudo machinectl shell navidrome@.host

# Expose navidrome config to systemd user
systemctl --user daemon-reload

# Enable navidrome
systemctl --user enable navidrome --now
```
