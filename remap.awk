#!/bin/awk -f

BEGIN {
    FPAT = "([^,]+)|(\"[^\"]+\")"
    OFS = ","
}

NR == 1 {
    print
}

NR > 1 {
    $2 = sprintf("%03i.jpg", $1)

    len = length($3)
    if (substr($3, len, len) == "\"") {
        $3 = substr($3, 0, len - 1)
        $3 = sprintf("%s District\"", $3)
    }
    else {
        $3 = sprintf("%s District", $3)
    }

    gsub(", ", "，", $4)
    gsub("-", "", $7)

    print
}
