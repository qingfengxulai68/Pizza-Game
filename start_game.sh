# Script principal
if [[ $1 == "start" && $2 == "--level" ]]; then
    LEVEL=$3
    FOLDER="niveau_$LEVEL"
    if [[ -d $FOLDER ]]; then
        echo "🔔 Vous commencez le niveau $LEVEL !"
        cd $FOLDER
        bash remise_a_zero.sh
        echo "ℹ️  Les fichiers du niveau $LEVEL ont été réinitialisés."
        echo "➡️  Suivez les instructions dans le dossier $FOLDER."
    else
        echo "❌ Le niveau $LEVEL n'existe pas."
    fi
else
    echo "Utilisation : ./main.sh start --level X (X = numéro du niveau)"
fi
