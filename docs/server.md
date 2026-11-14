# Utils

- vim
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

## Neovim

- Noen av oss bruker ny neovim så vi installerer det som appimage
- OBS: servern er arm basert!

```bash
wget https://github.com/neovim/neovim/releases/download/v0.12.6/nvim-linux-arm64.appimage
chmod +x nvim-linux-arm64.appimage
sudo cp ./nvim-linux-arm64.appimage /usr/local/bin/nvim
```

## Zellij

- Self contained binary
- Manuelt lastet ned og puttet `/usr/local/bin`

```bash
wget -N https://github.com/zellij-org/zellij/releases/latest/download/zellij-aarch64-unknown-linux-gnu.tar.gz
tar xf zellij-aarch64-unknown-linux-gnu.tar.gz
sudo mv --force zellij /usr/local/bin
```

# Users

## Groups

- sudo
- users

# Commands

- `sudo systemctl enable fail2ban --now`

# Annet

## Python

- Debian er litt håpløst

```bash
sudo ln -s /bin/python3 /usr/local/bin/python
```
