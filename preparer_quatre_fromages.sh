#!/bin/bash

#Vérifiaction que start est bien lancé
if [ ! -f etat.txt ]; then
    echo "Erreur : Lancez start_game.sh d'abord."
    exit 1
else
# Message de démarrage
echo "=== Préparation de la pizza quatre formage ==="
echo "La préparation d'une quatre fromage a commencé. 🍕"

# Créer le fichier avec la recette complète
echo "=== Recette de la pizza quatre fromage ===" > recette.txt
echo "1. Trouver les ingrédients nécessaires dans le dossier ingrédient." >> recette.txt
echo "2. Préparer les ingrédients dans le dossier préparation." >> recette.txt
echo "3. Cuire la pizza dans le dossier cuisson." >> recette.txt
echo "4. Enfin servez la pizza à Yafei et Gia." >> recette.txt
echo "Affichez le fichier recette.txt pour savoir ce qu'il faut faire."

# Lancer un chronomètre de 1 heure
echo "Vous avez 1 heure pour préparer la pizza"
sleep 3600 & # Démarrer le chronomètre en arrière-plan
chrono_pid=$!



# Optionnel : Attendre la fin du chronomètre pour afficher un message
wait $chrono_pid
echo "1 heure est passé mais vous n'avez pas réussi à finir la préparation de la pizza. Yafei et Gia sont mortes de faim..."
fi