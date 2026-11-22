#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
REPO_ROOT_MIRROR="$SCRIPT_DIR/../root"
PLUGINS_DIR="$REPO_ROOT_MIRROR"/opt/navidrome/data/plugins

mkdir --parents "$PLUGINS_DIR"

function download() {
    wget --quiet --show-progress --timestamping --directory-prefix "$PLUGINS_DIR" $1
}

echo "Downloading plugins:"

echo " * navidrome-lyrics-plugin"
download "https://github.com/J0R6IT0/navidrome-lyrics-plugin/releases/download/v9.2.0/nd-lyrics.ndp"
