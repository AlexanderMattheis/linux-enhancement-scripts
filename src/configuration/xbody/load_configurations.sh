#!/bin/bash
dconf load / < "system.cfg"
if [ -d "/home/oem/.mozilla" ]; then
	sudo rm -r "/home/oem/.mozilla"  # "-r" recursive
fi
cp "/home/oem/System/.mozilla" "/home/oem/.mozilla"