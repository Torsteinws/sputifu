#!/usr/bin/env bash
set -euo pipefail

cd /tmp

wget -N https://github.com/zellij-org/zellij/releases/latest/download/zellij-aarch64-unknown-linux-gnu.tar.gz
tar xf zellij-aarch64-unknown-linux-gnu.tar.gz
cp zellij /usr/local/bin/zellij --force --verbose
