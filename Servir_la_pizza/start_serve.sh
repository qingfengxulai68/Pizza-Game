#!/bin/bash

# Niveau 5 : Servir la pizza  
# Script pour démarrer le niveau 5

echo "Bienvenue au Niveau 5 : Servir la pizza !"
echo "Votre mission :"
echo "1. Créez un répertoire nommé 'table' avec la commande mkdir "
echo "2. Copiez le fichier 'pizza.txt' dans ce répertoire "
echo "3. Exécutez 'verification_serve.sh' pour vérifier votre progression."

# Prépare le fichier pizza.txt s'il n'existe pas
if [ ! -f pizza.txt ]; then
    echo "🍕 Une délicieuse pizza prête à être servie !" > pizza.txt
    echo "Le fichier pizza.txt a été créé."
else
    echo "Le fichier pizza.txt existe déjà."
fi

# Informe que le niveau est prêt
echo "Vous pouvez maintenant commencer la mission."
