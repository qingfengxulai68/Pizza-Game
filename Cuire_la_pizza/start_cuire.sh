#!/bin/bash

# Niveau 4 : Cuisson de la pizza  
# Script pour démarrer le niveau 4

echo "Bienvenue au Niveau 4 : Cuire la pizza !"
echo "Votre mission :"
echo "1. Créez un utilisateur nommé GordonRamsay avec la commande suivante :"
echo "   (sudo) useradd -m GordonRamsay"
echo "2. Identifiez et arrêtez le processus d'incendie nommé 'fire_in_kitchen' avec les commandes suivantes :"
echo "   ps aux | grep fire_in_kitchen"
echo "   kill <PID>"
echo "3. Exécutez './verification_cuire.sh' pour vérifier votre progression."

# Lance le processus simulant un incendie dans la cuisine
bash ./.fire_in_kitchen.sh &
echo "Attention ! La cuisine est en feu ! Aidez le chef à éteindre l'incendie !"
