#!/usr/bin/env bash

stash_name="${1}"
[[ "${stash_name}" == "" ]] && read -p "Enter the name of your stash: " stash_name

# get stash index
stash_num=$(git stash list | grep $stash_name | tr -s [:alpha:] '-' | tr -s [:punct:] '-' | sed -E 's/ |\-//g')

# Error handling
[[ "${stash_num}" == "" ]] && echo 'No stash found with that name' && exit 1;

echo "Found '${stash_name}'. Applying stash..."

# apply 
git stash apply --index $stash_num
