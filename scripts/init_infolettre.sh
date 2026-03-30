#!/bin/bash

# Check if the infolettre directory exists upfront
if [ ! -d "infolettre" ]; then
    echo "Error: The 'infolettre' directory does not exist."
    exit 1
fi

# Check if the source template directory exists
if [ ! -d "infolettre/infolettre_XX" ]; then
    echo "Error: The source template directory 'infolettre/infolettre_XX' does not exist."
    exit 1
fi

# Set INFOLETTRE_NB: use argument or auto-increment last number
if [ -z "$1" ]; then
    # Only run ls if the directory exists (already checked above)
    max=$(ls -d infolettre/infolettre_* | grep -oE '[0-9]+$' | sort -n | tail -1)
    if [ -z "$max" ]; then
        echo "Error: No infolettre folders found in the infolettre directory."
        exit 1
    fi
    INFOLETTRE_NB=$((max + 1))
else
    INFOLETTRE_NB=$1
fi

INFOLETTRE_BRANCH="infolettre_$INFOLETTRE_NB"

git switch main
git pull origin main
git switch -c $INFOLETTRE_BRANCH # for dev - comment this line
git push --set-upstream origin $INFOLETTRE_BRANCH # --dry-run # for dev

cp -r infolettre/infolettre_XX infolettre/$INFOLETTRE_BRANCH
mv infolettre/$INFOLETTRE_BRANCH/template.txt infolettre/$INFOLETTRE_BRANCH/index.qmd

git add infolettre/$INFOLETTRE_BRANCH/index.qmd # --dry-run # for dev
git commit -m "initializing infolettre $INFOLETTRE_NB" # --dry-run # for dev
