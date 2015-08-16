TEX=pdflatex
FILE=physics
BIB=biber

all:
	$(TEX) $(FILE)
	$(BIB) $(FILE)
	$(TEX) $(FILE)

index:
	makeindex -s svind.ist $(FILE)

compress:
	 gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(FILE)-compressed.pdf $(FILE).pdf
