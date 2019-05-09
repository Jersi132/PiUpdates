#!/bin/bash

currentDate=`date`
echo "--------------------------------------------"
echo "Start: "$currentDate

#Github Updates
cd /home/pi/PiUpdates/GitUpdates && ./GitUpdates.sh

#System Updates
sudo apt-get update && sudo apt-get dist-upgrade -y 
sudo rpi-update -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo reboot

currentDate=`date`
echo "Finish: "$currentDate
echo "--------------------------------------------"
