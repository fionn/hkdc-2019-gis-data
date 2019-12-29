#!/bin/bash

for x in "$@"; do
    convert "$x" -verbose -strip -interlace Plane -fuzz 1% -define trim:background-color=white -bordercolor white -trim -border 25 +repage "$x"
done
