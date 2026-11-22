# Navidrome

- Merk at noen av disse kommandoene er kanskje litt rare...(?)  
  Dette skyldes sannsynligvis av at vi migrerte fra systembruker til vanlig bruker, og ikke gjorde en komplett og perfekt migrasjon.

## Se 

- Se status

```bash
navidrome-status
```

- Se log

```bash
Høtt the føkk, aner ikke hvordan!
```

- Restart

```bash
navidrome-restart
```

- Stop

```bash
navidrome-stop
```

- Start

```bash
navidrome-stop
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
