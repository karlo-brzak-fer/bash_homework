#!/bin/bash

me=$(basename "$0")
rev=$(echo $me | sed 's/.sh//' | rev)
rev="$rev.sh"
tac $me | rev > $rev
