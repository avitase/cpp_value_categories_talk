.PHONY: all clean snippets

all: slides/build/main.pdf

slides/build/main.pdf: $(shell find slides -name '*.tex') slides/beamerthemevertex.sty
	cd slides && mkdir -p build && \
	latexmk -halt-on-error -pdflatex=lualatex -pdf -jobname=build/main main.tex

snippets:
	make -f Makefile.snippets

clean:
	make clean -f Makefile.snippets
	rm -f slides/build/*
