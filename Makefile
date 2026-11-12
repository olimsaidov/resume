.PHONY: all build png preview watch clean

all: build png preview

build:
	typst compile main.typ

png:
	typst compile main.typ "page-{p}.png" --ppi 300

# Regenerates the README Resume section; adapts to any page count.
preview: png
	@for f in page-*.png; do n=$${f%.png}; n=$${n#page-}; echo "![Resume, page $$n]($$f)"; done > .preview.tmp
	@awk '/<!-- preview:start -->/ {print; while ((getline line < ".preview.tmp") > 0) print line; skip=1; next} /<!-- preview:end -->/ {skip=0; print; next} !skip {print}' README.md > README.md.tmp
	@mv README.md.tmp README.md
	@rm .preview.tmp

watch:
	typst watch main.typ

clean:
	rm -f main.pdf page-*.png
