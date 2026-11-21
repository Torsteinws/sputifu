# Navidrome

- Merk at noen av disse kommandoene er kanskje litt rare...(?)  
  Dette skyldes sannsynligvis av at vi migrerte fra systembruker til vanlig bruker, og ikke gjorde en komplett og perfekt migrasjon.

## Service

- Se status

```bash
sudo systemctl --user --machine=navidrome@.host status navidrome
```

- Se log

```bash
Høtt the føkk, aner ikke hvordan!
```

- Restart

```bash
sudo systemctl --user --machine=navidrome@.host status navidrome
```

- Stop

```bash
sudo systemctl --user --machine=navidrome@.host stop navidrome
```

- Start

```bash
sudo systemctl --user --machine=navidrome@.host start navidrome
```

## Bruker

- Bytt til navidrome brukeren

```bash
sudo machinectl shell navidrome@.host
```

# Ftp mount

- Se status:

```bash
sudo systemctl status mnt-ftp.automount mnt-ftp.mount
```

- Restart

```bash
sudo systemctl restart mnt-ftp.automount mnt-ftp.mount
```
