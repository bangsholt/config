#!/bin/bash

URL=$1
NAME=$2
TAGS=$3

echo "<a href=\""$URL\"">\""$NAME" - tags: "$TAGS"\"</a><br />" >> /home/jbangsholt/jkb-links/bangsholt.github.io/links.html

cur_dir=$(pwd)

cd /home/jbangsholt/jkb-links/bangsholt.github.io

git add links.html
git commit -m "New link"
git push origin master

cd $cur_dir
