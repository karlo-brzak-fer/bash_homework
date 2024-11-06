#!/bin/bash

dir="/home/$USER/"
n=$1
echo $(find $dir -mmin -$1 -type f)
find $dir \( -type f -mmin -$n \) -print0 | tar -czf backup.tgz --null -T -