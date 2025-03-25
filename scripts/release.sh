#!/bin/bash

FILE=$1
BRANCH="$(git symbolic-ref --short -q HEAD)"
VERSION=$(git tag | tail -1)
FILENAME="data-economie-politique-d-usage-${VERSION}-${BRANCH}"
TITLE=$(head -n 1 $FILE | sed 's/^# //' )

sed '1,/^\s*## Introduction\s*$/ { /^\s*## Introduction\s*$/!d; }' $FILE > temp.md

echo Export content to "$FILENAME.docx"

pandoc -o "build/$FILENAME".docx -t docx -f gfm $FILE \
  --from markdown-yaml_metadata_block \
  --css=style.css \
  --standalone \
  --resource-path=.:src:media:./src/media/


echo Export content to "$FILENAME.odt"

pandoc "$FILE" --reference-doc=scripts/templates/default.ott -o "build/$FILENAME".odt \
  --metadata version="$VERSION" \
  --resource-path=.:src:media:./src/media/


echo Export content to "$FILENAME.tex"

pandoc -o "build/$FILENAME".tex -t latex -f gfm temp.md \
--from markdown-implicit_figures \
--template scripts/templates/default.tex \
--metadata TITLE="$TITLE" \
--metadata VERSION="$VERSION" \
--resource-path=.:./src/media/

echo Export content to "$FILENAME.pdf"


pandoc -o "build/$FILENAME".pdf -t pdf -f gfm temp.md \
  --pdf-engine=lualatex \
  --from markdown-implicit_figures \
  --template scripts/templates/default.tex \
  --metadata TITLE="$TITLE" \
  --metadata VERSION="$VERSION" \
  --resource-path=.:src/media/
rm temp.md
