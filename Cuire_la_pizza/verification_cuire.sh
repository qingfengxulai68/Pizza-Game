#!/bin/bash

# Vérification si le processus 'fire.py' est actif
if ps aux | grep -v grep | grep "python3 fire.py" > /dev/null; then
    process_active=true
else
    process_active=false
fi

# Affichage de l'état du processus
if [ "$process_active" = true ]; then
    echo "Le processus 'fire.py' est actif."
    echo "Échec : Le processus 'fire_in_kitchen' est toujours actif. Veuillez le tuer avant de continuer."
    exit 1
else
    echo "Le processus 'fire.py' n'est pas actif."
    echo "🎉 Félicitations ! Vous avez éteint le feu et invité Gordon Ramsay. Vous avez gagné ! 🎉"
    exit 0
fi

