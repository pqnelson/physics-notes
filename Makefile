TEX=pdflatex
FILE=physics

all:
	$(TEX) $(FILE)
	$(TEX) $(FILE)
	$(TEX) $(FILE)

compress:
	 gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(FILE)-compressed.pdf $(FILE).pdf
