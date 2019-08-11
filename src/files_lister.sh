#!/bin/bash
OUTPUT_NAME="FilesLister.out"
script_name=`basename "$0"`

echo -n "Print Fileendings (Default 'false')? "
read print_file_endings

echo -n "List only files (Default 'false')? "
read list_only_files

if [[ $list_only_files = "1" ]] || [[ $list_only_files = "true" ]]; then
	if [[ $print_file_endings = "1" ]] || [[ $print_file_endings = "true" ]]; then
		ls -p --ignore=$script_name --ignore=$OUTPUT_NAME | grep --invert-match / > $OUTPUT_NAME  # '-p' appends a slash at the front of all directories 
	else
		ls -p --ignore=$script_name --ignore=$OUTPUT_NAME | grep --invert-match / | sed 's/\.[a-z]*//g' > $OUTPUT_NAME  # 'grep' to remove all files with a slash at the front
	fi 
else
	if [[ $print_file_endings = "1" ]] || [[ $print_file_endings = "true" ]]; then
		ls --ignore=$script_name --ignore=$OUTPUT_NAME > $OUTPUT_NAME
	else
		ls --ignore=$script_name --ignore=$OUTPUT_NAME | sed 's/\.[a-z]*//g' > $OUTPUT_NAME  # 'sed' to remove the file-endings
	fi
fi 
