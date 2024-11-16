#!/bin/bash

# Crée plusieurs processus pour le jeu
for i in {1..5}; do
     
    # Crée un processus virtuel à forte charge avec un indice de jeu
    (while :; do echo "Simulation $i"; sleep 10; done) &
done

# 创建一个特殊的“目标进程”  
# Crée un processus spécial nommé "Target_Pizza_Process"
(while :; do echo "Target_Pizza_Process"; sleep 10; done) &

# Informe le joueur que les processus sont démarrés
echo "Les processus sont maintenant en cours. Lancez 'htop' pour les gérer !"  
