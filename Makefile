build:
	latexmk -pdf

watch:
	latexmk -pdf -pvc thesis.tex

clean:
	latexmk -c
