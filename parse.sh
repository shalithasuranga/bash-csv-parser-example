#!/bin/bash

CSV_FILE="product_list.csv"
IFS=,
while read -r fruit price
do
    printf "%-12s: \$%.2f\n" "$fruit" "$price"
done < <(cat $CSV_FILE)
