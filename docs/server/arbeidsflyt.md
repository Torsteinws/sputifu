# Arbeidsflyter

## Initial setup

1. ssh inn til server med påskrudd `ForwardAgent`

2. Clone git repo til din home directory på serveren.

## Deploy

1. Hent siste endringer: 
    ```bash
    git pull
    ```
2. Kjør deploy script:
    ```bash
    sudo server/scripts/deploy.sh
    ```
