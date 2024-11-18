#!/bin/bash

# Script pour vérifier si le joueur a correctement terminé le niveau 5

# Vérifie si le fichier pizza.txt existe dans le répertoire table
if [ -f table/pizza.txt ]; then
    echo "Succès : La pizza a été servie sur la table. Bravo ! 🍕"
    echo "4)reussi" > reussite.txt
else
    echo "Échec : La pizza n'a pas encore été servie. Vérifiez vos commandes."
fi
