#!/bin/bash

# Add CSV Headers (if no csv)
[[ ! -e jokes.csv ]] && touch jokes.csv && chmod 777 jokes.csv && output_csv="Date,Joke\n"

# Grab five jokes
for i in {1..5}
do

    new_joke=$(curl --silent --use-ascii --location --request GET 'https://icanhazdadjoke.com/' --header 'Accept: text/plain')
    timestamp=$(date +"%b, %d %Y (%I:%M %p %Z)")
    new_record="\"$timestamp\",\"$new_joke\" \n"
    output_csv+=$new_record
done

# Add jokes into the csv
echo -en "$output_csv" >> jokes.csv
