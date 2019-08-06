#!/bin/bash
DEFAULT_NUM_OF_FOLDERS=1

echo -n "Number of folders? "  # '-n': no new line
read number_of_folders

number_pattern="^[0-9]+$'"

if ! [[ $number_of_folders =~ $number_pattern ]]; then
    counts=($(seq --equal-width 1 $number_of_folders))
else
    counts=($(seq --equal-width 1 $DEFAULT_NUM_OF_FOLDERS))
fi

today=$(date +%Y-%m-%d)

for i in ${counts[@]}; do
    mkdir --parents "$today-$i"  # '--parents' to ignore existing folders
    let i=i+1
done

