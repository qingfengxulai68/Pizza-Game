#!/bin/bash

# Définir les fichiers à réinitialiser
reset_files=("recette.txt" "choix_pizza.txt" "etat.txt")

# Supprimer les fichiers générés
echo "=== Réinitialisation du jeu ==="

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
