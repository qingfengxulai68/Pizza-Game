#!/bin/bash

# Fichiers et dossiers à supprimer
output_file="ping.txt"
copy_dir="copie"

echo "=== Réinitialisation de l'étape Ping ==="

# Supprimer le fichier ping.txt
if [ -f "$output_file" ]; then
    rm "$output_file"
    echo "Fichier $output_file supprimé."
else
    echo "Fichier $output_file introuvable. Rien à supprimer."
fi

# Supprimer le dossier copie
if [ -d "$copy_dir" ]; then
    rm -rf "$copy_dir"
    echo "Dossier $copy_dir supprimé."
else
    echo "Dossier $copy_dir introuvable. Rien à supprimer."
fi

echo "Étape Ping réinitialisée. Vous pouvez recommencer."
