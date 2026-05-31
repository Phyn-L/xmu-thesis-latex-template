MAIN = main

.PHONY: all clean distclean

all:
	latexmk -xelatex -interaction=nonstopmode -file-line-error $(MAIN).tex

clean:
	latexmk -c $(MAIN).tex
	rm -f $(MAIN).xdv $(MAIN).tce

distclean: clean
	rm -f $(MAIN).pdf

