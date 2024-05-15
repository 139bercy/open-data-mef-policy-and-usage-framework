#!/bin/bash

FILE=$1
FILENAME=$(basename -- "$FILE")
EXTENSION="${FILENAME##*.}"
VERSION=$(git tag --sort=taggerdate | tail -1)
FILENAME="data-economie-politique-d-usage-${VERSION}-${FILENAME%.*}"

sed '/^# Table$/,/^## Introduction$/{/^## Introduction$/!d;}' src/main.md > temp.md

echo Export content to "$FILENAME.docx"

pandoc -o "build/$FILENAME".docx -t docx -f gfm temp.md --from markdown-yaml_metadata_block --css=style.css --standalone

echo Export content to "$FILENAME.pdf"

pandoc -o "build/$FILENAME".pdf -t pdf -f gfm temp.md --pdf-engine=xelatex --from markdown-yaml_metadata_block --template templates/default.tex

rm temp.md
