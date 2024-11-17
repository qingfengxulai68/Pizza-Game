#!/bin/bash

# Niveau 4 : Cuisson de la pizza
# Script pour démarrer le niveau 4

echo "Bienvenue au Niveau 4 : Cuire la pizza !"
# Lancer le processus simulant un incendie dans la cuisine
python3 fire.py &
echo "Attention ! La cuisine est en feu ! Aidez le chef à éteindre l'incendie !"

echo "Votre mission :"
echo "Identifiez et arrêtez le processus d'incendie nommé 'fire_in_kitchen' avec les commandes ： ps aux | grep et kill "
