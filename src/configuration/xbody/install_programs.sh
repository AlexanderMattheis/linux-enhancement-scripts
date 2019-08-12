#!/bin/bash
# regular programs------------------------------------------------------------------------------------------------------
# install dconf Editor
sudo apt install dconf-editor

# install Inkscape [latest]
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo apt update  # downloads/updates package lists from repositories to find out what are the newest program versions
sudo apt install -y inkscape
cp "/home/oem/Downloads/Shortcuts/inkscape.desktop" "/home/oem/Desktop/inkscape.desktop"

# install IntelliJ IDEA [2019.2]
cd "/opt/"
sudo tar -xvzf "~/Downloads/Programs/ideaIC-2019.2.tar.gz"  # x: extract, v: verbose, z: zip/dezip (decompress), f: file
cd "/home/desktop/"
cp "/home/oem/Downloads/Shortcuts/jetbrains-idea-ce.desktop" "/home/oem/Desktop/jetbrains-idea-ce.desktop"
cd "/home/oem/Downloads/Programs/"

# install SmartGit [18.2.9]
sudo apt install -y "./smartgit-19_1_0.deb"
cp "/home/oem/Downloads/Shortcuts/syntevo-smartgit.desktop" "/home/oem/Desktop/syntevo-smartgit.desktop"

# install WPS Office [11.1.0.8392]"
sudo apt install -y "./WPS Office/wps-office_11.1.0.8392_amd64.deb"
cd "/opt/kingsoft/wps-office/office6/dicts/spellcheck/"
sudo unzip -f "/home/oem/Downloads/Programs/WPS Office/de_DE"  # '-f' freshen existing files, without replacement
cd "/home/oem/Downloads/Programs/"
cp "/home/oem/Downloads/Shortcuts/wps-office-et.desktop" "/home/oem/Desktop/wps-office-et.desktop"
cp "/home/oem/Downloads/Shortcuts/wps-office-wpp.desktop" "/home/oem/Desktop/wps-office-wpp.desktop"
cp "/home/oem/Downloads/Shortcuts/wps-office-wps.desktop" "/home/oem/Desktop/wps-office-wps.desktop"

# snap packages---------------------------------------------------------------------------------------------------------
# install snap package support [latest]
sudo apt update
sudo apt upgrade -y  # fetches the packages found by 'sudo apt-get update'
sudo apt install -y snapd

# install notepadqq [latest]
install Notepadqq [latest]
sudo snap install --classic notepadqq

# development-----------------------------------------------------------------------------------------------------------
# install git [latest]
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y git

# install Node.js [12+] with npm [6+]
sudo apt install -y curl  # to download the official Node.js installation script
sudo apt install -y build-essential  # to compile and install native addons
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash
sudo apt install -y nodejs 