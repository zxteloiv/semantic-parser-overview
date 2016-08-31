.PHONY: all newbuild clean fullbuild 

all: fullbuild

fullbuild:
	mkdir -p build
	xelatex --output-directory=build source.tex | tail -n 2 | head -1
	wc -l source.tex

newbuild: clean build

clean:
	rm -rf build source.tex
