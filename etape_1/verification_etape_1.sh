#!/bin/bash

# Vérifier que le fichier des ingrédients existe
if [ ! -f ingredients_a_collecter.txt ]; then
    echo "Erreur : Lancez start_etape_1.sh d'abord."
fi

# Charger les ingrédients nécessaires
read -r -a required_ingredients < ingredients_a_collecter.txt

# Base des dossiers
base_dir="/pizza_ingredients"

# Vérifier que les fichiers ont été supprimés
missing_count=0
for ingredient in "${required_ingredients[@]}"; do
    file_path=$(find "$base_dir" -type f -name "$ingredient.txt" 2>/dev/null)
    if [ -n "$file_path" ]; then
        echo "L'ingrédient $ingredient n'a pas été supprimé !"
        missing_count=$((missing_count + 1))
    fi
done

# Résultat final
if [ "$missing_count" -eq 0 ]; then
    echo "Bravo ! Vous avez correctement collecté tous les ingrédients."
    echo "1)reussi" > reussite.txt
    
else
    echo "Certains ingrédients n'ont pas été collectés. Réessayez !"
fi
