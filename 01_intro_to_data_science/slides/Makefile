
all: 01_intro_data_science.pdf \
     02_data_science_workflow.pdf \

%.pdf: %.tex
	latexmk -pdf -pdflatex="xelatex --shell-escape" -use-make $<

clean:
	latexmk -CA

