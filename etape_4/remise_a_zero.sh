#!/bin/bash

# Réinitialisation du niveau 4
echo "=== Réinitialisation de l'étape 4 ==="
# Supprime le répertoire table s'il existe
if [ -d table ]; then
    rm -r table
    echo "Le répertoire 'table' a été supprimé."
else
    echo "Le répertoire 'table' n'existait pas."
fi

# Supprime le fichier pizza.txt s'il existe
if [ -f pizza.txt ]; then
    rm pizza.txt
    echo "Le fichier 'pizza.txt' a été supprimé."
else
    echo "Le fichier 'pizza.txt' n'existait pas."
fi

echo "Le niveau 5 a été réinitialisé. Vous pouvez recommencer."
