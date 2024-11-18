#!/bin/bash

echo "jeu en cours" > etat.txt

# Définir les chemins vers les scripts de préparation
margherita_script="./preparer_margherita.sh"
reine_script="./preparer_reine.sh"
quatre_fromages_script="./preparer_quatre_fromages.sh"

# Afficher les options disponibles
echo "=== Préparons ensemble une pizza pour Yafei et Gia ==="
echo "Quelle pizza souhaitez-vous préparer ?"
echo "1. Margherita"
echo "2. Reine"
echo "3. Quatre Fromages"
echo -n "Entrez le numéro correspondant à votre choix : "

# Lire le choix de l'utilisateur
read choix

# Gérer les choix avec un `case`
case $choix in
    1)  
        selected_pizza="margherita"
        echo "Vous avez choisi une Margherita. Préparation en cours..."
        echo "$selected_pizza" > choix_pizza.txt
        if [[ -x $margherita_script ]]; then
            $margherita_script
        else
            echo "Erreur : le script $margherita_script est introuvable ou non exécutable."
        fi
        ;;
    2)  
        selected_pizza="reine"
        echo "Vous avez choisi une Reine. Préparation en cours..."
        echo "$selected_pizza" > choix_pizza.txt
        if [[ -x $reine_script ]]; then
            $reine_script
        else
            echo "Erreur : le script $reine_script est introuvable ou non exécutable."
        fi
        ;;
    3)  
        selected_pizza="quatre_fromages"
        echo "Vous avez choisi une 4 Fromages. Préparation en cours..."
        echo "$selected_pizza" > choix_pizza.txt
        if [[ -x $quatre_fromages_script ]]; then
            $quatre_fromages_script
        else
            echo "Erreur : le script $quatre_fromages_script est introuvable ou non exécutable."
        fi
        ;;
    *)  
        echo "Choix invalide. Veuillez réessayer."
        ;;
esac
