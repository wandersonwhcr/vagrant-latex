all: document.pdf

document.tex:
	cp document.tex.dist document.tex

document.pdf: document.aux document.bbl
	pdflatex document.tex && pdflatex document.tex

document.bbl: document.bib document.tex
	bibtex document.aux

document.aux: document.tex
	pdflatex document.tex

clean:
	${RM} *.aux *.bbl *.blg *.log *.pdf
