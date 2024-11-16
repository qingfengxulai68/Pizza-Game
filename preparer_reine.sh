#!/bin/bash

# Message de démarrage
echo "=== Préparation de la pizza Reine ==="
echo "La préparation d'une Reine a commencé. 🍕"

# Créer le fichier avec la recette complète
echo "=== Recette de la pizza Reine ===" > recette.txt
echo "1. Trouver les ingrédients nécessaires dans le dossier ingrédient." >> recette.txt
echo "2. Préparer les ingrédients dans le dossier préparation." >> recette.txt
echo "3. Cuire la pizza dans le dossier cuisson." >> recette.txt
echo "4. Enfin servez la pizza à Yafei et Gia." >> recette.txt
echo "Affichez le fichier recette.txt pour savoir ce qu'il faut faire."

# Lancer un chronomètre de 1 heure
echo "Un chronomètre de 1 heure a été lancé pour la préparation."
sleep 3600 & # Démarrer le chronomètre en arrière-plan
chrono_pid=$!

# Optionnel : Attendre la fin du chronomètre pour afficher un message
wait $chrono_pid
echo "Le chronomètre de 1 heure est terminé. La Reine devrait être prête ! 🍕"
