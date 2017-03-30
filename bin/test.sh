#!/bin/bash

if [ ! $TRAVIS_BUILD_DIR ]; then
    TRAVIS_BUILD_DIR=$(pwd)
fi

for i in *.md; do
    if [ ! "$i" == README.md ]; then
        DIR=$(echo $i | cut -d'.' -f 1)
        TEMPDIR=$(mktemp -d)
        cd $TEMPDIR && mdpress $TRAVIS_BUILD_DIR/$i
        if [[ $(diff -r $TRAVIS_BUILD_DIR/$DIR $TEMPDIR/$DIR) ]] || [ ! -d $TRAVIS_BUILD_DIR/$DIR ]; then
            echo "There are unbuilt .md files"
            exit 1
        fi
    fi
done
