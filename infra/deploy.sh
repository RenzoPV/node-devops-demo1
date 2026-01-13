#!/bin/bash
# Dar permiso de ejecución de script: chmod +x deploy.sh
set -e # Detiene el script si ocurre un error

terraform init # Inicializa providers y backend
terraform plan # Muestra cambios
terraform apply -auto-approve # Aplica infraestructura