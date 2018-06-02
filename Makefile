default: build

build:
	gnuplot plot.gnu
	xelatex main.tex
