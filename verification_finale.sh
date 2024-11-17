#!/bin/bash

# Liste des scripts de vérification
verification_scripts=(
    "etape_1/verification_etape_1.sh"
    "etape_2/verification_etape_2.sh"
    "etape_3/verification_cuire.sh"
    "etape_4/verification_serve.sh"
)

# Variable pour suivre le statut global
all_valid=true

echo "Hmmm on regarde ça..."

# Boucle pour exécuter chaque script de vérification
for script in "${verification_scripts[@]}"; do
    if [ -x "$script" ]; then
        echo "Exécution de $script..."
        # Exécuter le script
        $script
        if [ $? -ne 0 ]; then
            echo "Échec : $script a détecté une erreur."
            all_valid=false
        else
            echo "Succès : $script validé."
        fi
    else
        echo "Erreur : Le script $script est introuvable ou non exécutable."
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