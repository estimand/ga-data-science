
all: intro_classification.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape" -use-make $<

clean:
	latexmk -CA

