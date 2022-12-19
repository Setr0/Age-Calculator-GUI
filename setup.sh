#!/usr/bin/bash
echo -e "1. Install\n2. Uninstall"
read -p "Input: " input

if [[ input -eq 1 ]]
then

echo "Installing..."
echo "Installing Dependencies..."
sudo apt-get install python3 python3-pip python3-tk -y
pip3 install datetime
echo "Making Directory..."
sudo mkdir /usr/share/icons/age_calculator_gui
echo "Copying Files..."
sudo cp age_calc_gui.py /usr/bin/
sudo cp age_calculator.svg age_calculator.png /usr/share/icons/age_calculator_gui/
sudo cp "Age Calculator.desktop" /usr/share/applications/

read -p "Press Enter to finish"

elif [[ input -eq 2 ]]
then

echo "Uninstalling..."
echo "Removing Files..."
sudo rm /usr/bin/age_calc_gui.py
sudo rm -rf /usr/share/icons/age_calculator_gui
sudo rm /usr/share/applications/Age\ Calculator.desktop
read -p "Press Enter to finish"

else

echo "Wrong Input"
read -p "Press Enter to exit"

fi
