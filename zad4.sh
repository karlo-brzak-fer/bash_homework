#!/bin/bash

file="ulaz.txt"
me=$(basename "$0")
rev=$(echo $me | sed 's/.sh//' | rev)
rev="$rev.sh"
tac $me | rev > $rev
