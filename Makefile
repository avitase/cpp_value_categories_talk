SNIPPETS := $(shell \
for f in `find snippets -name '*.cpp'`; do echo "$${f%.cpp}_lst.tex"; done\
)

all: $(SNIPPETS)

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/bin/activate

snippet%_lst.tex: snippet%.cpp venv convert.py
	. venv/bin/activate; python convert.py $<

clean:
	rm -rf venv
	find -iname "*.pyc" -delete
	rm -f $(SNIPPETS)
