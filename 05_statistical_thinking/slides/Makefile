
all: 01_probability_statistics.pdf \
     02_estimation_hypothesis_testing.pdf

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape" -use-make $<

clean:
	latexmk -CA

