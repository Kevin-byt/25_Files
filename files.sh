#!/bin/bash

STATUS_FILE=last.txt
name="kevin"

if [ -f "$STATUS_FILE" ]; then
    num=$(cat $STATUS_FILE)
fi

for i in {1..25}
do
    fn=$(expr $num + $i)
    file="${name}-${fn}"
    # echo $file
    touch $file.txt
done

echo $fn > $STATUS_FILE