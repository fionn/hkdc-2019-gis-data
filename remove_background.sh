#!/bin/bash

for x in "$@"; do
    echo "converting $x" >&2
    convert "$x" -fuzz 8% -fill none -draw "color 1,1 floodfill" -scale 50% -resize 810000@ -geometry 900x900 "${x%.jpg}.png"
done
