#!/bin/bash

# Vérifier que le choix de la pizza existe
if [ -f ../choix_pizza.txt ]; then
    # Copier le fichier dans le dossier actuel
    cp ../choix_pizza.txt .
    
    # Lire le choix de la pizza
    selected_pizza=$(cat choix_pizza.txt)

    # Liste des ingrédients pour chaque pizza
    declare -A pizzas
    pizzas[margherita]="tomates pate_pizza fromages basilic"
    pizzas[reine]="tomates pate_pizza champignons jambon fromages"
    pizzas[quatre_fromages]="pate_pizza fromages bleu parmesan mozzarella"
    pizzas[pepperoni]="tomates pate_pizza pepperoni fromages"

    # Vérifier que la pizza sélectionnée est valide
    if [ -z "${pizzas[$selected_pizza]}" ]; then
        echo "Erreur : la pizza sélectionnée ($selected_pizza) n'est pas valide."
        exit 1
    fi

    # Liste aléatoire d'ingrédients supplémentaires
    extra_ingredients=("olives" "poivrons" "oignons" "anchois" "capres" "roquette" "huile_d_olive" "epices")

    # Générer une arborescence de dossiers aléatoires
    generate_structure() {
        local base_dir=$1
        mkdir -p "$base_dir"
        
        # Créer 5 dossiers principaux
        for i in {1..5}; do
            local main_folder="$base_dir/main_folder_$i"
            mkdir -p "$main_folder"
            
            # Chaque dossier principal contient 4 sous-dossiers
            for j in {1..4}; do
                local sub_folder="$main_folder/folder_$j"
                mkdir -p "$sub_folder"
                
                # Chaque sous-dossier contient des fichiers d'ingrédients
                for k in {1..5}; do
                    # Ajouter un ingrédient aléatoire
                    local random_ingredient=${extra_ingredients[RANDOM % ${#extra_ingredients[@]}]}
                    touch "$sub_folder/$random_ingredient.txt"
                done
            done
        done
    }

    # Générer l'arborescence
    base_dir="pizza_ingredients"
    generate_structure "$base_dir"

    # Ajouter les bons ingrédients à des emplacements aléatoires
    for ingredient in ${pizzas[$selected_pizza]}; do
        random_folder=$(find "$base_dir" -type d | shuf -n 1)
        touch "$random_folder/$ingredient.txt"
    done
    echo "=== Etape 1 : Récupérer les ingrédients nécessaires pour faire votre pizza ==="
    echo
    echo "Votre mission :"
    echo "Trouvez et supprimez les fichiers suivants pour préparer une $selected_pizza :"
    echo "${pizzas[$selected_pizza]}" > ingredients_a_collecter.txt
    cat ingredients_a_collecter.txt
    echo "Une fois terminé, lancez le script de vérification pour valider cette étape."
else
    echo "Erreur : veuillez lancer start_game.sh d'abord rohhh."
fi



