#!/bin/bash

for i in *.md; do
    if [ ! "$i" == README.md ]; then
        DIR=$(echo $i | cut -d'.' -f 1)
        mdpress $i
        if [[ ! $(grep $i index.html) ]]; then
            echo "<p><a href=$DIR/index.html>$i</a></p>" >> index.html && echo Built $i
        fi
        if [ $OPEN_US ]; then xdg-open $DIR/index.html & fi
    fi
done

if [ $OPEN_US ]; then xdg-open index.html & fi
