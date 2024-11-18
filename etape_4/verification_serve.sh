#!/bin/bash

# Script pour vérifier si le joueur a correctement terminé le niveau 5

# Vérifie si le fichier pizza.txt existe dans le répertoire table
if [ -f etape_4/table/pizza.txt ]; then
    echo "Succès : La pizza a été servie sur la table. Bravo ! 🍕"
    exit 0
else
    echo "Échec : La pizza n'a pas encore été servie. Vérifiez vos commandes."
    exit 1
fi
