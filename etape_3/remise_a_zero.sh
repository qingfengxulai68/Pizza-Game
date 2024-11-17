$file = 'etat.txt'
if [ -f "$file" ]; then
    rm "$file"
    echo "Fichier '$file' supprimé."