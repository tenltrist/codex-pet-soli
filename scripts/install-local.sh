#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p "$HOME/.codex/pets/soli"
cp assets/pet.json assets/spritesheet.webp "$HOME/.codex/pets/soli/"
echo "Installed Soli / 朔璃 to $HOME/.codex/pets/soli"
echo "Restart Codex or switch pets, then choose Soli / 朔璃."
