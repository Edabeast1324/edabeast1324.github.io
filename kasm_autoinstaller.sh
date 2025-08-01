#!/bin/bash
clear

echo "Welcome to the Kasm autoinstaller!"
echo "1) Install for AMD64"
echo "2) Install for ARM64"
read -p "Choose an option: " choice

if [[ "$choice" == "1" ]]; then
    clear
    echo "Updating system"
    sleep 2
    sudo apt update && sudo apt upgrade -y
    clear
    echo "System up to date"
    sleep 2

    echo "Fetching files"
    sleep 2
    wget https://kasm-static-content.s3.amazonaws.com/kasm_release_1.17.0.7f020d.tar.gz
    clear
    echo "Files fetched"
    sleep 2

    echo "Running install script"
    sleep 2
    tar -xf kasm_release_1.17.0.7f020d.tar.gz
    cd kasm_release
    sudo bash install.sh

    echo "Successfully Installed"
    echo "Go to http://<your-ip-address> to access, or http://localhost on this device"

elif [[ "$choice" == "2" ]]; then
    clear
    echo "Updating system"
    sleep 2
    sudo apt update && sudo apt upgrade -y
    clear
    echo "System up to date"
    sleep 2

    echo "Fetching files"
    sleep 2
    wget https://kasm-static-content.s3.amazonaws.com/kasm_release_1.17.0.7f020d.tar.gz
    clear
    echo "Files fetched"
    sleep 2

    echo "Running install script"
    sleep 2
    tar -xf kasm_release_1.17.0.7f020d.tar.gz
    cd kasm_release
    sudo bash install.sh
    echo "If the script ended with a subprocess error, run this script again. That always happens to me on ARM."
    echo "Install script finished"
    echo "Go to http://<your-ip-address> to access, or http://localhost on this device"
    
else
    echo "Invalid choice"
    exit 1

fi
