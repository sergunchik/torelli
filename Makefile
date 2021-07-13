# MarkDown sources
MD = $(wildcard *.md)
# MD = trl.md
# associated HTML, LaTeX and PDF compiled files
HTML = $(MD:.md=.html)
TEX  = $(MD:.md=.tex)
PDF  = $(MD:.md=.pdf)
# compiler from MarkDown to HTML, LaTeX and PDF
PD = pandoc

all:	html tex pdf;
html:	$(HTML);
	$(PD) -s -o all.html $(HTML)
tex:	$(TEX);
	$(PD) -s -o all.tex $(TEX)
#pdf:	tex $(PDF);
#	latexmk -lualatex all.tex
pdf:	$(PDF);
%.html:	%.md;
	$(PD) --mathml -o $@ $<
%.tex:	%.md;
	$(PD) -o $@ $<
%.pdf:  %.md;
	$(PD) --pdf-engine=lualatex -o $@ $<
clean:	;
	@latexmk -silent -C > /dev/null
	rm -f $(HTML) $(TEX) $(PDF) all.*
	

.PHONY: all
