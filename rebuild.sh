#!/bin/sh

for f in *.svg
do
	inkscape --export-area-page --export-dpi=240 --export-type="png" $f
done

montage book*.png -tile 3x2 -geometry +0+0 preview.png
