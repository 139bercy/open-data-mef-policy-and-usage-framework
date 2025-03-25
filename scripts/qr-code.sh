#!/bin/bash

FILENAME=$1

echo "Enter the content to encore"
read URL

# Vérifie si l'URL est vide
if [ -z "$URL" ]; then
    echo "Aucune URL fournie. Veuillez réessayer."
    exit 1
fi

# Génère le QR code et sauvegarde dans un fichier PNG
OUTPUT_FILE="src/media/$FILENAME"
qrencode -o "$OUTPUT_FILE" -s 10 -m 1 "$URL"

# Affiche un message de confirmation
echo "Le QR code généré a été sauvegardé dans le fichier : $OUTPUT_FILE"
