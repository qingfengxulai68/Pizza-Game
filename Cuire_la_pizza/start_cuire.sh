#!/bin/bash

# Niveau 4 : Cuisson de la pizza
# Script pour démarrer le niveau 4

echo "Bienvenue au Niveau 4 : Cuire la pizza !"
echo "Votre mission :"
echo "1. Créez un utilisateur nommé GordonRamsay"
echo "2. Identifiez et arrêtez le processus d'incendie nommé 'fire_in_kitchen' avec les commandes ： ps aux | grep et kill "
echo "3. Exécutez 'verification_cuire.sh' pour vérifier votre progression."

""" 
Vérifie si le fichier 'fire_in_kitchen.sh' existe
if [ ! -f "./fire_in_kitchen.sh" ]; then
    echo "Erreur : Le fichier 'fire_in_kitchen.sh' est introuvable. Assurez-vous qu'il est dans le même répertoire."
    exit 1
fi
"""
# Rendre le script 'fire_in_kitchen.sh' exécutable
chmod +x ./fire_in_kitchen.sh


# Lancer le processus simulant un incendie dans la cuisine

"""
./fire_in_kitchen.sh &
echo "Attention ! La cuisine est en feu ! Aidez le chef à éteindre l'incendie !"
"""

python3 fire.py &
