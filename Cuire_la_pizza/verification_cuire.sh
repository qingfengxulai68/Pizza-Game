#!/bin/bash

# Vérification de l'utilisateur 'GordonRamsay'
if id "GordonRamsay" &>/dev/null; then
    user_exists=true
else
    user_exists=false
fi

# Vérification si le processus 'fire.py' est actif
if ps aux | grep -v grep | grep "python3 fire.py" > /dev/null; then
    process_active=true
else
    process_active=false
fi

# Affichage de l'état du processus
if [ "$process_active" = true ]; then
    echo "Le processus 'fire.py' est actif."
else
    echo "Le processus 'fire.py' n'est pas actif."
fi

# Évaluation des deux conditions
if [ "$user_exists" = true ] && [ "$process_active" = false ]; then
    echo "🎉 Félicitations ! Vous avez éteint le feu et invité Gordon Ramsay. Vous avez gagné ! 🎉"
    exit 0
else
    if [ "$user_exists" = false ]; then
        echo "Échec : L'utilisateur 'GordonRamsay' n'existe pas. Veuillez le créer avant de continuer."
    fi

    if [ "$process_active" = true ]; then
        echo "Échec : Le processus 'fire_in_kitchen' est toujours actif. Veuillez le tuer avant de continuer."
    fi

    exit 1
fi
