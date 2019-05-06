#!/bin/bash

filename='gitlist.txt'
#echo Start
while read p; do 
    echo $p
    cd /home/pi/$p
    git pull
    npm install
done < $filename

#cd /home/pi/$1
#git pull
#npm install

