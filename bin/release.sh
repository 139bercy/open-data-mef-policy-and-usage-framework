#!/bin/bash

FILE=$1
FILENAME=$(basename -- "$FILE")
EXTENSION="${FILENAME##*.}"
VERSION=$(git tag --sort=taggerdate | tail -1)
FILENAME="data-economie-politique-d-usage-${VERSION}-${FILENAME%.*}"

echo Export content to "$FILENAME.$EXTENSION"

pandoc -o "build/$FILENAME".docx -f markdown -t docx "$FILE" --from markdown-yaml_metadata_block --css=style.css --standalone
