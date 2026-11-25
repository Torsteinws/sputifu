# Arbeidsflyter

## ssh

Det er veldig nyttig å skru på `ForwardAgent`. Da kan du bruke din private ssh nøkkel som om den eksisterte på serveren.

Det enkleste er å sette dette opp i din ssh config:

```
# ~/.ssh/config

Host sputifu
    HostName sputifu.no
    User <MY_USERNAME_ON_SERVER>
    ForwardAgent yes
```

Da kan du logge deg inn på serveren med:

```bash
ssh sputifu
```

## Initial setup

1. ssh inn til server med påskrudd `ForwardAgent`.

2. Clone git repo til din home directory på serveren.
    ```bash
    git clone git@github.com:Torsteinws/sputifu.git
    ```

## Deploy

1. Hent siste endringer:
    ```bash
    git pull
    ```
2. Kjør deploy script:
    ```bash
    sudo server/scripts/deploy.sh
    ```
