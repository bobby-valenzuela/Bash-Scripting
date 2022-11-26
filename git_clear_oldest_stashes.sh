#! /bin/bash
# Clear stashes - keep latest 10

current=10
stash_count=$( (expr 0 + $( git stash list | wc -l ) ) )
echo $stash_count

while [ $current -lt $stash_count ]
do
    echo "In Loop: $current"
    current=$(expr $current + 1)
    output=$(git stash drop stash@{$current})
done

