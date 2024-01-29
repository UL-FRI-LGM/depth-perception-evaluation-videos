#!/bin/bash

cd "$(dirname "$0")"

for folder in *; do
    if [ ! -d "$folder" ]; then
        continue;
    fi

    ffmpeg -y -r 30 -pattern_type glob -i "$folder/frame"'*.png' -crf 17 -pix_fmt yuv420p "$folder".mp4
done
