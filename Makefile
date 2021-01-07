SVG_FILES = $(wildcard *.svg)
PNG_FILES = $(SVG_FILES:.svg=.png)

.PHONY: clean png

%.png: %.svg
	inkscape --export-area-page --export-dpi=240 --export-type="png" $< -o $@

png: $(PNG_FILES)

preview.png: png
	montage $(PNG_FILES) -tile 3x2 -geometry +0+0 $@

clean:
	find . -name "*.png" -type f -not -name "preview.png" -delete
