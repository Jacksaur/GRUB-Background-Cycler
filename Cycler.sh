#!/bin/bash
# !!TEMPORARY!! CHANGE ME!
cd ./Cycler/
# !!
count=0

# Iterate through files and decrease their filename by 1. Also track how many total backgrounds are available.
for f in *.png; do
	echo Renaming $f to $((${f%.*}-1)).png
	mv $f $((${f%.*}-1)).png
	count=$((++count))
done

# Remove background from main folder and rename it to sit at bottom of the rotation, put the lowest value image back in its place.
echo Swapping background now...
mv ../background.png ./$count.png
mv ./0.png ../background.png
