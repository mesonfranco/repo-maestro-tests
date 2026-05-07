#!/bin/bash

for file in .maestro/baseline/*.png
do
    filename=$(basename "$file")

    compare \
    ".maestro/baseline/$filename" \
    ".maestro/current/$filename" \
    ".maestro/diffs/$filename"

    echo "Compared: $filename"
done