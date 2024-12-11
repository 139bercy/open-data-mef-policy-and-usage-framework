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

echo "Export content to build/$FILENAME.md"

pandoc -f html -t commonmark $FILE -o foo.md
