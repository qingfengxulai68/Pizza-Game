#!/bin/bash

# Fonction pour générer un nom d'ingrédient aléatoire (hors des noms uniques)
generate_random_ingredient() {
    local ingredients=("poivrons" "olives" "oignons" "basilic" "huile_d_olive" "epices" "anchois" "capres" "crevettes" "roquette")
    echo "${ingredients[RANDOM % ${#ingredients[@]}]}"
}

# Générer la structure des dossiers
generate_structure() {
    local base_dir=$1
    local depth=$2

    if [ "$depth" -eq 0 ]; then
        # Créer des fichiers aléatoires dans ce dossier
        for i in {1..5}; do
            random_ingredient=$(generate_random_ingredient)
            touch "$base_dir/$random_ingredient.txt"
        done
    else
        # Créer 4 sous-dossiers dans ce dossier
        for i in {1..4}; do
            local sub_dir="$base_dir/folder_$i"
            mkdir -p "$sub_dir"
            generate_structure "$sub_dir" $((depth - 1))
        done
    fi
}

# Racine des dossiers
root_dir="random_pizza_structure_unique"
mkdir -p "$root_dir"

# Générer 5 dossiers principaux avec la structure requise
for i in {1..5}; do
    main_dir="$root_dir/main_folder_$i"
    mkdir -p "$main_dir"
    generate_structure "$main_dir" 3
done

# Placer les fichiers uniques dans des emplacements aléatoires
unique_ingredients=("tomates" "pate_pizza" "champignons" "jambon" "fromages")
for ingredient in "${unique_ingredients[@]}"; do
    # Choisir un dossier aléatoire dans l'arborescence
    random_folder=$(find "$root_dir" -type d | shuf -n 1)
    touch "$random_folder/$ingredient.txt"
    echo "Fichier unique $ingredient.txt créé dans $random_folder"
done

echo "Structure de dossiers et fichiers générée avec succès dans le dossier '$root_dir'."
