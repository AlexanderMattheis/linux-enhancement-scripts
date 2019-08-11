#!/bin/bash
OUTPUT_NAME="ProcessesLister.out"

 # '-A' selects all processes
 # 'x' lifts 'tty'-restriction
 # 'c' to remove the process path (not documented)
 # 'o' for formatting
ps -A --sort=+command xco pid,command > $OUTPUT_NAME  # '+' to sort in ascending order