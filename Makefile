
STYLES := css/tufte-css/tufte.css \
	css/pandoc.css \
	css/pandoc-solarized.css \
	css/tufte-extra.css

all: index.html

index.html: index.md Makefile
	pandoc -o $@ $< -t html5 -c css/styling.css --self-contained

clean:
	rm -rf index.html

