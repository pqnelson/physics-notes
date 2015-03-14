TEX=pdflatex
FILE=physics
BIB=biber

index:
	makeindex -s svind.ist $(FILE)

all:
	$(TEX) $(FILE)
	$(BIB) $(FILE)
	$(TEX) $(FILE)

compress:
	 gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$(FILE)-compressed.pdf $(FILE).pdf
