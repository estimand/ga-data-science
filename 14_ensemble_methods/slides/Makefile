
all: ensemble_methods.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape" -use-make $<

clean:
	latexmk -CA

