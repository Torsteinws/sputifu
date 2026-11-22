# Generelt

OBS: Serveren er armbasert! Husk på dét hvis du skal installere noe!

# Utils

- vim-gtk
- zsh
- tmux
- nginx
- git
- podman
- podman-compose
- ripgrep
- fail2ban
- plocate
- fzf
- fdfind
- davfs2
- machinectl
- unzip

## Navidrome CLI

Eksempel:

```bash
navidrome -h
```
- Lokasjon: `/usr/local/bin/` 
- Er et lite wrapper script som vi vedlikeholder her: [server/usr/local/bin/navidrome](server/usr/local/bin/navidrome)

## Neovim

- Installert som appimage.
- Lokasjon: `/usr/local/bin/nvim`
- Installasjonsscript: `server/packages/neovim/`

## Python

- Global symlink: python3 -> python
- Debian er litt håpløst.

```bash
sudo ln -s /bin/python3 /usr/local/bin/python
```

## tlrc

- Klient for [tldr pages](https://github.com/tldr-pages/tldr)
- Eksempel: `tldr grep`
- Installert via en .deb fil.
- Nyeste versjon: [https://github.com/tldr-pages/tlrc/releases](https://github.com/tldr-pages/tlrc/releases)
- Installasjonsscript: `server/packages/tlrc/`

## Zellij

- Installert som self contained binary.
- Lokasjon: `/usr/local/bin/zellij`
- Installasjonsscript: `server/packages/zellij/`

# Users

## Groups

- sudo
- users

# Commands

- `sudo systemctl enable fail2ban --now`

# Annet
