#!/bin/bash

# Fonction pour lancer le jeu de devinette
function guess_files() {
    local file_count=$(ls -1 | wc -l)
    echo "Il y a $file_count fichiers dans le répertoire actuel."

    while true; do
        read -p "Devinez combien de fichiers il y a : " guess

        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre valide."
            continue
        fi

        if (( guess == file_count )); then
            echo "Félicitations ! Vous avez deviné le bon nombre."
            break
        elif (( guess < file_count )); then
            echo "Trop bas. Essayez encore."
        else
            echo "Trop haut. Essayez encore."
        fi
    done
}

# Appel de la fonction
guess_files
