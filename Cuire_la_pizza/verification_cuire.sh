

#!/bin/bash

# Vérifie si le processus 'fire_in_kitchen' est toujours actif
if ps aux | grep -v grep | grep "./fire_in_kitchen.sh" > /dev/null; then
    echo "Échec : Le processus 'fire_in_kitchen' est toujours actif. Veuillez le tuer avant de continuer."
    exit 1
else
    echo "Succès : Le feu est éteint, vous pouvez passer au niveau suivant !"
    exit 0
fi
