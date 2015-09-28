all: document.pdf

document.pdf:
	pdflatex document.tex

clean:
	${RM} *.aux *.log *.pdf
