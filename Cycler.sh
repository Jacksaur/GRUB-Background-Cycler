#!/bin/bash
# Set working directory to script's location
cd "${0%/*}"
count=0

#Background cycling
# Iterate through files and decrease their filename by 1. Also track how many total backgrounds are available.
for f in *.png; do
	echo Renaming $f to $(printf %02d $((10#${f%.*}-1)))
	mv $f $(printf %02d $((10#${f%.*}-1))).png
	count=$((++count))
done

# Remove background from main folder and rename it to sit at bottom of the rotation, put the lowest value image back in its place.
echo Swapping background with $(printf %02d $(($count)))
mv ../background.png $(printf %02d $(($count))).png
mv ./00.png ../background.png
