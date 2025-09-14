#!/bin/bash
set -e

# chemin du dossier où se trouve ce script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

cd "$ROOT_DIR"

echo "Reinitializing git repository..."

rm -rf .git
git init
git add .
git commit -m "init from starter"
