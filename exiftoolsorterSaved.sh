#!/bin/sh

# Requirements
#pkg install -y bash p5-Image-ExifTool

# INFO  Copy photos based on Year/Year-Month-Day from syncthing phone camera folder
# -o ~/dummy This flag is to copy, not move. The directory is a fallback if the flag isn't available on the given photo. Good if using something like DateTimeOriginal
# -d /mnt/Photos/%Y/%Y-%m-%d Create folders with the given date format.
# -r Run recursively

set -e

EXIFTOOL="/usr/bin/exiftool"

# Copy jpegs to directory recursively into organized folder based on FileModifyDate
$EXIFTOOL -o ~/dummy/ "-Directory<FileModifyDate" -d "/data/Photos/%Y/%Y-%m-%d" -r /data/Misc/syncthing/savedphotos/ -ext jpg

# Check the exit status of the exiftool command
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi
