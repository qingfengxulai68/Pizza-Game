#!/bin/bash

# Arrête tous les processus créés par le jeu
pkill -f "Simulation"  
pkill -f "Target_Pizza_Process"

# Informe le joueur que l'environnement est réinitialisé
echo "Tous les processus du jeu ont été arrêtés et l'environnement est réinitialisé."  
