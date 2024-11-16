# Chemin vers les scripts de préparation des pizzas
margherita_script="./preparer_margherita.sh"
reine_script="./preparer_reine.sh"
quatre_fromages_script="./preparer_quatre_fromages.sh"

# Afficher les options disponibles
echo "=== Préparons ensemble une pizza pour Yafei et Gia ==="
echo "Quelle pizza souhaitez-vous préparer ?"
echo "1. Margherita"
echo "2. Reine"
echo "3. 4 Fromages"
echo -n "Entrez le numéro correspondant à votre choix : "

# Collecter la réponse de l'utilisateur
read choix

# Lancer le script correspondant
case $choix in
    # 1)
        echo "Vous avez choisi une Margherita. Préparation en cours..."
        if [[ -x $margherita_script ]]; then
            $margherita_script
        else
            echo "Erreur : le script $margherita_script est introuvable ou non exécutable."
        fi
        ;;
    # 2)
        echo "Vous avez choisi une Reine. Préparation en cours..."
        if [[ -x $reine_script ]]; then
            $reine_script
        else
            echo "Erreur : le script $reine_script est introuvable ou non exécutable."
        fi
        ;;
    # 3)
        echo "Vous avez choisi une 4 Fromages. Préparation en cours..."
        if [[ -x $quatre_fromages_script ]]; then
            $quatre_fromages_script
        else
            echo "Erreur : le script $quatre_fromages_script est introuvable ou non exécutable."
        fi
        ;;
    # *)
        echo "Choix invalide. Veuillez réessayer."
        ;;
esac