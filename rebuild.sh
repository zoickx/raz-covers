#!/bin/sh

for f in *.svg
do
	inkscape --export-area-page --export-dpi=240 --export-type="png" $f
done
