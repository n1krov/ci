#!/bin/bash
set -e

echo "[+] Limpiando build anterior..."
rm -rf build/ dist/ *.spec

echo "[+] Compilando con PyInstaller..."

pyinstaller main.py \
  --onefile \
  --clean \
  --name main \
  --collect-submodules pwnlib \
  --collect-data pwnlib \
  --hidden-import=pwnlib.shellcraft.amd64 \
  --hidden-import=pwnlib.elf \
  --hidden-import=pwnlib.asm \
  --hidden-import=pwnlib.shellcraft \
  --hidden-import=pwnlib.atexception \
  --hidden-import=pwnlib.data

echo "[+] Build lista en ./dist/main"

