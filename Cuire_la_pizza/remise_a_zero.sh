#!/bin/bash

# Réinitialisation du niveau 4

# Arrête le processus 'fire_in_kitchen' s'il est toujours actif
pkill -f "sh ./.fire_in_kitchen.sh"

# Supprime l'utilisateur GordonRamsay s'il existe
if id "GordonRamsay" &>/dev/null; then
    userdel -r GordonRamsay
    echo "L'utilisateur GordonRamsay a été supprimé."
else
    echo "L'utilisateur GordonRamsay n'existait pas."
fi

echo "Le niveau 4 a été réinitialisé. Vous pouvez recommencer."
