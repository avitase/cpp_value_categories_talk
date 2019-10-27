SNIPPETS := $(shell \
for f in `find snippets -name '*.cfg'`; do echo "$${f%.cfg}_lst.tex"; done\
)

all: $(SNIPPETS) slides/build/main.pdf

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/bin/activate

snippets/snippet%_lst.tex: snippets/snippet%.cfg venv convert.py
	. venv/bin/activate; python convert.py $<

slides/build/main.pdf: $(shell find slides -name '*.tex') $(SNIPPETS)
	cd slides && mkdir -p build && \
	latexmk -halt-on-error -pdflatex=lualatex -pdf -jobname=build/main main.tex

clean:
	rm -rf venv
	find -iname "*.pyc" -delete
	rm -f $(SNIPPETS)
	rm -f slides/build/*
