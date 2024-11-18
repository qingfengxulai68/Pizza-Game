#!/bin/bash

# Dossiers et fichiers à supprimer
base_dir="pizza_ingredients"
ingredients_file="ingredients_a_collecter.txt" "choix_pizza.txt" "reussite.txt"

echo "=== Réinitialisation du l'etape 1 ==="

# Supprimer l'arborescence des ingrédients
if [ -d "$base_dir" ]; then
    rm -rf "$base_dir"
    echo "Dossier '$base_dir' supprimé."
else
    echo "Dossier '$base_dir' introuvable. Rien à supprimer."
fi

# Supprimer le fichier des ingrédients à collecter
if [ -f "$ingredients_file" ]; then
    rm "$ingredients_file"
    echo "Fichier '$ingredients_file' supprimé."
else
    echo "Fichier '$ingredients_file' introuvable. Rien à supprimer."
fi
