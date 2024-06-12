#!/bin/sh

# Requirements
#pkg install -y bash p5-Image-ExifTool

# INFO  Copy photos based on Year/Year-Month-Day from syncthing phone camera folder
# -o ~/dummy This flag is to copy, not move. The directory is a fallback if the flag isn't available on the given photo. Good if using something like DateTimeOriginal
# -m Ignore minor errors
# -d /mnt/Photos/%Y/%Y-%m-%d Create folders with the given date format.
# -r Run recursively

set -e

EXIFTOOL=$(which exiftool)

# Copy jpegs to directory recursively into organized folder
$EXIFTOOL -o ~/dummy/ "-Directory<DateTimeOriginal" -m -d "/data/Photos/%Y/%Y-%m-%d" -r /data/Misc/syncthing/phonecamera/ -ext jpg
