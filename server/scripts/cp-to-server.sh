#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
REPO_ROOT_MIRROR="$SCRIPT_DIR/../root"

# TODO: This feels a bit dirty. We should look for a better solution. Perhaps rsync is a better fit?
cp --recursive --verbose "$REPO_ROOT_MIRROR"/* /

chown navidrome:navidrome /opt/navidrome/navidrome.toml
chown navidrome:navidrome /home/navidrome/.config/containers/systemd/navidrome.container
