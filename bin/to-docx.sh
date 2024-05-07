#!/bin/bash

FILE=$1
FILENAME=$(basename -- "$FILE")
EXTENSION="${FILENAME##*.}"
FILENAME="${FILENAME%.*}"

echo $FILENAME
echo $EXTENSION

pandoc -o "$FILENAME".docx -f markdown -t docx "$FILE" --from markdown-yaml_metadata_block --css=style.css --standalone
