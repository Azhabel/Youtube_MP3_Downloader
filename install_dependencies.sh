#!/bin/bash

# Vérifier si l'utilisateur a les droits d'administrateur
if [ "$(id -u)" -ne 0 ]; then
  echo "Ce script nécessite des privilèges root. Veuillez l'exécuter avec sudo."
  exit 1
fi

echo "Mise à jour des dépôts et installation des prérequis..."

# Mettre à jour les dépôts de paquets
apt update -y

# Installer Node.js et npm
echo "Installation de Node.js et npm..."
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs

# Vérifier que Node.js et npm sont bien installés
node -v
npm -v

# Installer Python3 et venv si nécessaire
echo "Installation de Python3 et venv..."
apt install -y python3 python3-venv

# Création et activation d'un environnement virtuel Python
echo "Création d'un environnement virtuel..."
python3 -m venv venv
source venv/bin/activate

# Mise à jour de pip
echo "Mise à jour de pip..."
pip install --upgrade pip

# Installation de yt-dlp dans l'environnement virtuel
echo "Installation de yt-dlp (via pip)..."
pip install -U yt-dlp

# Vérification de l'installation de yt-dlp
yt-dlp --version

# Installer les paquets nécessaires pour le projet Node.js
echo "Installation des dépendances npm..."
npm install

# Désactivation de l'environnement virtuel
deactivate

# Vérification des installations
echo "Vérification de l'installation..."
source venv/bin/activate
yt-dlp --version
deactivate

echo "L'installation est terminée avec succès !"
