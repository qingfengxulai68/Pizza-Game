#!/bin/bash

# Fichier où le choix de pizza est stocké (doit avoir été créé dans une étape précédente)
choix_file="../choix_pizza.txt"

# Vérification de l'existence du fichier choix_pizza.txt
if [ ! -f "$choix_file" ]; then
    echo "Lancer le script start_game.sh d'abord rohhh."
    exit 1
else

# Lecture du choix de la pizza
selected_pizza=$(cat "$choix_file")

# Instructions pour le joueur
echo "=== Etape 2 : Préparer la pizza ==="
echo
echo "Vous avez choisi de cuisiner une : $selected_pizza."
echo "Pour cela suivez cess consignes :"
echo "1. Pingez le site www.google.com exactement 5 fois et stocker la réponse dans un fichier nommé ping.txt"
echo "2. Créez un dossier nommé 'copie' dans le répertoire courant."
echo "3. Copiez le fichier 'ping.txt' dans le dossier 'copie' et renommez-le en : {nom_pizza_choisie}_ping.txt"
echo "Une fois terminé, lancez le script de vérification pour valider cette étape."

fi