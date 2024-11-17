#!/bin/bash

# Fichier où le choix de pizza est stocké
choix_file="../choix_pizza.txt"

# Vérification de l'existence du fichier choix_pizza.txt
if [ ! -f "$choix_file" ]; then
    echo "Erreur : le fichier $choix_file n'existe pas. Impossible de vérifier."
    exit 1
fi

# Lecture du choix de la pizza
selected_pizza=$(cat "$choix_file")

# Fichier attendu
expected_file="copie/${selected_pizza}_ping.txt"

# Vérifier l'existence du fichier renommé
if [ ! -f "$expected_file" ]; then
    echo "Erreur : Le fichier $expected_file est introuvable. Étape non validée."
    exit 1
fi

# Vérifier que le fichier contient exactement 5 pings
ping_count=$(grep -c "icmp_seq=" "$expected_file")

if [ "$ping_count" -eq 5 ]; then
    echo "Félicitations ! Le fichier $expected_file contient exactement 5 pings."
    echo "Étape réussie."
else
    echo "Erreur : Le fichier $expected_file contient $ping_count pings au lieu de 5. Étape non validée."
fi
