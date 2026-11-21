#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

"$SCRIPT_DIR"/cp-to-server.sh

echo "Reloading systemd files..."

systemctl --user --machine=navidrome@.host daemon-reload
systemctl daemon-reload

echo "Restarting navidrome..."

systemctl --user --machine=navidrome@.host stop navidrome
systemctl stop mnt-ftp.automount mnt-ftp.mount
systemctl start mnt-ftp.automount
systemctl --user --machine=navidrome@.host start navidrome
