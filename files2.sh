#!/bin/bash

#get name
#create 25 files with a format name##
#just automate everything

echo "enter your name: "
read name

start=$(($( ls | grep -E "$name[0-9]+" | wc -l ) + 1)
end=$(($start + 24))

for n in $(eval  echo {$start..$end});
do
        touch $name$n
done


#seq $start $end | xargs -I "number" touch $name"number"