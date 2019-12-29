#!/bin/bash

for x in I__[0-9]*; do
    filename=$(basename "$x" .jpg)
    echo "$x"
    mv "$x" "$(printf %03d.jpg "${filename#I__}")"
done
