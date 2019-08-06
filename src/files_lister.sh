#!/bin/bash
OUTPUT_NAME="FilesLister.out"
script_name=`basename "$0"`
ls --ignore=$script_name --ignore=$OUTPUT_NAME > $OUTPUT_NAME