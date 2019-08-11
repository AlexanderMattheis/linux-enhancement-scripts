#!/bin/bash
OUTPUT_NAME="ServicesLister.out"

 # finds with 'grep' all active services, ones that are starting with '[ + ]'
 # removes all '[ + ]' at the beginning with 'sed'
 # removes all resulting white spaces at the beginning with 'sed'
service --status-all | grep --only-matching " \[ + \]  [A-Za-z0-9\_\-]*" | sed 's/\[ + \]//g; s/ //g' > $OUTPUT_NAME