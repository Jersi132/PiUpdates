#!/bin/bash

#Github Updates
cd /home/pi/PiUpdates/GitUpdates
GitUpdates.sh

#System Updates
sudo apt-get update && sudo apt-get dist-upgrade -y 
sudo rpi-update -y
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo reboot
