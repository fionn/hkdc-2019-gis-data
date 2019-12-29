#!/bin/bash

awk -F , 'NR > 1 {OFS = ","; $2 = sprintf("%03i.jpg", $1); print} 1' "$1" | uniq
