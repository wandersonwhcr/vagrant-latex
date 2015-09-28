all: document.pdf

document.tex:
	cp document.tex.dist document.tex

document.pdf: document.tex
	pdflatex document.tex

clean:
	${RM} *.aux *.log *.pdf
