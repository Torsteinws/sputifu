#!/usr/bin/env bash
set -euo pipefail

cd /tmp

# Update link from: https://github.com/tldr-pages/tlrc/releases
wget -O tlrc.deb https://github.com/tldr-pages/tlrc/releases/download/v1.13.1/tlrc-v1.13.1-aarch64-unknown-linux-gnu.deb

sudo apt install tlrc.deb
