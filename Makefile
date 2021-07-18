# R MarkDown sources
MD = $(wildcard *.Rmd)
# MD = torelli.Rmd
# associated HTML, LaTeX and PDF compiled files
HTML = $(MD:.Rmd=.html)
TEX  = $(MD:.Rmd=.tex)
PDF  = $(MD:.Rmd=.pdf)
EPUB = $(MD:.Rmd=.epub)
# compiler from MarkDown to HTML, LaTeX and PDF
PD = pandoc

all:	html epub pdf;
html:	$(HTML);
tex:	$(TEX);
pdf:	$(PDF);
epub:	$(EPUB);
gitbook: ;
	R -q -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")';
bs4: ;
	R -q -e 'bookdown::render_book("index.Rmd", "bookdown::bs4_book")';
%.tex:	%.Rmd;
	$(PD) -o $@ $<
%.epub: %.Rmd;
	R -q -e 'bookdown::render_book("$<", "bookdown::epub_book")';
%.html:	%.Rmd;
	R -q -e 'rmarkdown::render("$<", output_format = "bookdown::html_document2")'
%.pdf:  %.Rmd;
	R -q -e 'rmarkdown::render("$<", output_format = "bookdown::pdf_document2")'
clean:	;
	@latexmk -silent -C $(TEX) > /dev/null
	rm -rf _book $(HTML) $(TEX) $(PDF) $(EPUB)
	

.PHONY: all
