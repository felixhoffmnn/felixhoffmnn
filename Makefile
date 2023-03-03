.PHONY: clean build
.DEFAULT_GOAL := build

clean:
	@echo "Cleaning up..."
	latexmk -c -output-directory=out/latex

build:
	@echo "Building the document..."
	cd cv && latexmk -pdf -synctex=1 -shell-escape -interaction=nonstopmode -output-directory=out/latex cv_felix_hoffmann.tex
