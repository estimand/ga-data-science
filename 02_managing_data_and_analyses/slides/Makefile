
all: 01_databases.pdf \
     02_version_control.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape" -use-make $<

clean:
	latexmk -CA

