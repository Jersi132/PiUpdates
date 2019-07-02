#!/bin/bash

filename='gitlist.txt'
#echo Start
while read p; do 
    echo $p
    cd /home/pi/$p
    changed=0
    git remote update && git status -uno | grep -q 'Your branch is behind' && changed=1
    if [ $changed = 1 ]; then
		git stash save
        git pull
        npm install
        echo "Updated successfully";
    else
        echo "Up-to-date"
    fi

    #git pull
    #npm install
done < $filename

#cd /home/pi/$1
#git pull
#npm install

