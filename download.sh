#!/bin/bash
if [ ! -d "venv" ]; then
  echo "L'environnement virtuel 'venv' n'existe pas. Veuillez l'initialiser d'abord."
  exit 1
fi
source venv/bin/activate
node download.js
deactivate

