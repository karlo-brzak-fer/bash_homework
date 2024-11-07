#!/bin/bash


while true;
 do

    who | while read -r line; 
    do
        usr=$(echo $line | awk '{ print $1 }')
        date=$(date)
        usr="$usr $date"
        echo $usr >> log_history.log
    done
sleep $(($1 * 60)) 

done
