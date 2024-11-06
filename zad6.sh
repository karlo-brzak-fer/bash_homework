#!/bin/bash

dir="/home/$USER/"
n=$1
echo $(find $dir  -type f -size +$n)
find $dir \( -type f -size +$n \) -print0 | tar -czf backup.tgz --null -T -