#!/bin/bash

# Fonction pour corriger les backslashes et remplacer \[ et \] par [ et ]
fix_backslashes() {
    sed -E '
        s/\\\[/[/g
        s/\\\]/]/g
        s/\\\\/\\/g
    ' "$1" > "$1.tmp" && mv "$1.tmp" "$1"
}

# Appliquer la fonction à chaque fichier passé en argument
for file in "$@"
do
    fix_backslashes "$file"
done

git status

git diff --name-only --diff-filter=M | xargs git add

exit 0
