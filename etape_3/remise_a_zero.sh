#!/bin/bash

echo "=== Réinitialisation de l'étape 3 ==="
# Nom du fichier
file="etat.txt"

# Vérification de l'existence du fichier
if [ -f "$file" ]; then
    # Suppression du fichier
    rm "$file"
    echo "Le fichier '$file' a été supprimé avec succès."
else
    echo "Le fichier '$file' n'existe pas."
fi