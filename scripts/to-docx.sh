#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: No input file provided."
  echo "Usage: $0 <input-file> [output-filename]"
  exit 1
fi

FILE=$1

if [ -n "$2" ]; then
  FILENAME=$2
else
  FILEPATH=${FILE%%.*}
  FILENAME=${FILEPATH##*/}
fi

echo "Export content to build/$FILENAME.docx"

pandoc -o "build/$FILENAME".docx -t docx -f gfm "$FILE" \
  --from markdown-yaml_metadata_block \
  --css=style.css \
  --standalone
