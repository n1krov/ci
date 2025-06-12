#!/bin/bash

# Configuración
VPS_USER=zoso
VPS_HOST=vps.zoso.dev
PROJECT_NAME=ci
CONTAINER_NAME=ci_container

# RUTA DONDE VIVIRÁ EL PROYECTO EN EL VPS
VPS_PATH=/home/$VPS_USER/$PROJECT_NAME

echo "🚀 Conectando al VPS $VPS_HOST..."

ssh $VPS_USER@$VPS_HOST << EOF
  echo "📦 Parando contenedor anterior..."
  docker stop $CONTAINER_NAME || true
  docker rm $CONTAINER_NAME || true

  echo "🧹 Borrando versión anterior..."
  rm -rf $VPS_PATH
  mkdir -p $VPS_PATH

  echo "📥 Copiando nueva versión..."
EOF

scp -r . $VPS_USER@$VPS_HOST:$VPS_PATH

ssh $VPS_USER@$VPS_HOST << EOF
  cd $VPS_PATH

  echo "🐳 Construyendo imagen Docker..."
  docker build -t $PROJECT_NAME .

  echo "🚀 Lanzando contenedor..."
  docker run -d --name $CONTAINER_NAME $PROJECT_NAME

  echo "✅ ¡Despliegue exitoso!"
EOF

