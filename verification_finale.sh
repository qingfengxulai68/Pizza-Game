#!/bin/bash

# Liste des scripts de vérification
verification_files=(
    "etape_1/reussite.txt"
    "etape_2/reussite.txt"
    "etape_3/reussite.txt"
    "etape_4/reussite.txt"
)

# Variable pour suivre le statut global
all_valid=true

echo "Hmmm on regarde ça..."

# Boucle pour exécuter chaque script de vérification
for files in "${verification_files[@]}"; do
    if [ -f "$files" ]; then
        echo "$files"
    else
        echo "Erreur : $files non trouvé refaire cette étape."
        all_valid=false
    fi
done

# Vérification du statut global
if $all_valid; then
    echo
    echo "🎉 Félicitations ! Toutes les étapes ont été validées. Vous avez réconforté Yafei et Gia avec une excellente Pizza, Merci ! 🎉"
    exit 0
else
    echo
    echo "❌ Une ou plusieurs étapes ont échoué. Veuillez corriger les erreurs et réessayer."
    exit 1
fi