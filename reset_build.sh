#!/bin/bash

echo "Limpiando archivos y carpetas generados por PyInstaller..."

# Archivo spec (puede haber varios .spec)
rm -f *.spec

# Carpeta build
rm -rf build/

# Carpeta dist
rm -rf dist/

# Archivos __pycache__
find . -type d -name "__pycache__" -exec rm -rf {} +

# Archivos .pyc y .pyo
find . -type f \( -name "*.pyc" -o -name "*.pyo" \) -delete

echo "Limpieza completa."

