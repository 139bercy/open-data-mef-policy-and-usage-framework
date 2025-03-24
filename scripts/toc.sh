#!/bin/bash

file=$1

echo "Delete ToC"

sed -i "" '/^## Table$/,/^## Introduction$/{/^## Introduction$/!d;}'  $file
markdown-toc -h 2 -t github --table-of-contents-style "## Table" $file
mdformat src
