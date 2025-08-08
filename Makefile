all: main.pdf

main.pdf: headers.tex main.tex
	latexmk -pdf -synctex=1 -interaction=nonstopmode -shell-escape main

.PHONY: clean

clean:
	rm -f *.aux *.log *.out *.snm *.toc *.vrb *.nav *.synctex.gz *.blg *.bbl *.fdb_latexmk *.fls *.ind *.idx *.ilg *.bcf *.run.xml *.xdv
