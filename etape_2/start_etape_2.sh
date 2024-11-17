#!/bin/bash

# Fichier où le choix de pizza est stocké (doit avoir été créé dans une étape précédente)
choix_file="../choix_pizza.txt"

# Vérification de l'existence du fichier choix_pizza.txt
if [ ! -f "$choix_file" ]; then
    echo "Erreur : le fichier $choix_file n'existe pas. Assurez-vous d'avoir choisi une pizza."
    exit 1
fi

# Lecture du choix de la pizza
selected_pizza=$(cat "$choix_file")

# Instructions pour le joueur
echo "=== Étape 2 ==="
echo "Nom de la pizza que vous avez choisi : $selected_pizza."
echo
echo "Voici les consignes pour cette étape :"
echo "1. Pingez le site www.google.com exactement 5 fois et stocker la réponse dans un fichier nommé ping.txt"
echo
echo "2. Créez un dossier nommé 'copie' dans le répertoire courant."
echo
echo "3. Copiez le fichier 'ping.txt' dans le dossier 'copie' et renommez-le en : {nom_pizza_choisie}_ping.txt"
echo
echo "Une fois terminé, lancez le script de vérification pour valider cette étape."
