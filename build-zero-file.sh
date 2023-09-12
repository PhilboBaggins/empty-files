#!/bin/sh

if [ $# -gt 2 ]; then
    BLOCK_SIZE="$1"
    COUNT="$2"
    OUTPUT_FILENAME="$3"
else
    echo "Usage: $(basename -- "$0") block-size count output-filename"
    exit 1
fi

#echo "BLOCK_SIZE=$BLOCK_SIZE"
#echo "COUNT=$COUNT"
#echo "OUTPUT_FILENAME=$OUTPUT_FILENAME"

exec dd if=/dev/zero bs="$BLOCK_SIZE" count="$COUNT" | bzip2 > "$OUTPUT_FILENAME"
