#!/bin/bash

usage() {
  echo "Usage: $0 -i <input-file> [-o <output-filename>] [-t <title>] [-v <version>]"
  exit 1
}

VERSION="v1.0.0"
FILE=$1
shift

TITLE=$(head -n 1 $FILE | sed 's/^# //' )

while getopts "o:t:v:" opt; do
  case $opt in
    o) FILENAME=$OPTARG ;;
    t) TITLE=$OPTARG ;;
    v) VERSION=$OPTARG ;;
    *) usage ;;
  esac
done

if [ -z "$FILE" ]; then
  echo "Error: No input file provided."
  usage
fi

if [ -z "$FILENAME" ]; then
  FILEPATH=${FILE%%.*}
  FILENAME=${FILEPATH##*/}
fi

OUTPUT="$FILENAME-$VERSION"

echo "Export content to build/$OUTPUT.pdf"

pandoc -o "build/$OUTPUT".pdf -t pdf -f gfm $FILE \
  --pdf-engine=xelatex \
  --from markdown-yaml_metadata_block \
  --template scripts/templates/default.tex \
  --metadata TITLE="$TITLE" \
  --metadata VERSION="$VERSION"
