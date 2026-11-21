#!/usr/bin/env bash
set -euo pipefail

cd /tmp

wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-arm64.appimage
chmod +x nvim-linux-arm64.appimage
cp ./nvim-linux-arm64.appimage /usr/local/bin/nvim --force --verbose
