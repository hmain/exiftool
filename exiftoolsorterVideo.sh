#!/bin/bash
# INFO  Copy photos based on Year/Year-Month-Day from syncthing phone camera folder
# -o ~/dummy This flag is to copy, not move. The directory is a fallback if the flag isn't available on the given photo. Good if using something like DateTimeOriginal
# -d /mnt/Photos/%Y/%Y-%m-%d Create folders with the given date format.
# -r Run recursively

set -e

EXIFTOOL="/usr/bin/exiftool"

# Copy jpegs to directory recursively into organized folder
#$EXIFTOOL -o ~/dummy/ "-Directory<DateTimeOriginal" -d "/mnt/Photos/%Y/%Y-%m-%d" -r /mnt/syncthing/phonecamera/ -ext jpg
#&&
# Copy mp4's based on CreateDate into organized folder
exiftool -o ~/dummy/ "-Directory<CreateDate" -d "/data/Photos/%Y/%Y-%m-%d" -r /data/Misc/syncthing/phonecamera/ -ext mp4

#$EXIFTOOL -o ~/dummy/ "-Directory<CreateDate" -d "/mnt/Photos/%Y/%Y-%m-%d" -r /mnt/syncthing/savedvideos/ -ext mp4

