#!/bin/bash

# Supprimer les fichiers générés
echo "=== Réinitialisation du jeu ==="
echo
# Définir les fichiers à réinitialiser
reset_files=("recette.txt" "choix_pizza.txt" "etat.txt" 
            "etape_1/choix_pizza.txt" "etape_1/ingredients_a_collecter.txt" "etape_1/reussite.txt"
            "etape_2/ping.txt" "etape_2/reussite.txt" "etape_3/etat.txt" "etape_3/reussite.txt"
            "etape_4/pizza.txt" "etape_4/reussite")

reset_dir=("etape_1/pizza_ingredients" "etape_2/copie" "etape_4/table")

# Supprimer
for dir in "${reset_dir[@]}"; do
    if [ -d "$dir" ]; then
        rm -rf "$dir"
        echo "Dossier '$dir' supprimé."
    else
        echo "dossier introuvable, rien à supprimer : $file"
    fi
done

for file in "${reset_files[@]}"; do
    if [[ -f "$file" ]]; then
        rm -f "$file"
        echo "Supprimé : $file"
    else
        echo "Fichier introuvable, rien à supprimer : $file"
    fi
done

# Réinitialisation terminée
echo "Le jeu a été réinitialisé. Tous les fichiers générés ont été supprimés."
