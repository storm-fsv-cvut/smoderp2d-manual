latexfile = smoderp2d_manual_cz
latexfileen = smoderp2d_manual_en

TEX = pdflatex
BIB = bibtex
d=`date -I`-$(latexfile)
dtmp=/tmp/`date -I`-$(latexfile)

all: $(latexfile).pdf

$(latexfile).pdf: clean 
	$(TEX) $(latexfile)
	$(BIB) $(latexfile)
	$(TEX) $(latexfile)
	$(TEX) $(latexfile)

en :
	$(TEX) $(latexfileen)
	$(BIB) $(latexfileen)
	$(TEX) $(latexfileen)
	$(TEX) $(latexfileen)

view :
	okular $(latexfile).pdf &
clean: 
	rm -f  *.dvi *.bbl *.blg *.aux *.log *.spl *.out *.toc 
tar: 
	tar -hczf $d.tgz *.tex Makefile 1_tex bib config graph img tab *.kilepr 
zip: 
	zip $d.zip *.tex obr/* tex/*.tex *.bib  *.pdf
	

cleanhtml: 
	rm -f html/*.png html/*.html html/*.css
tikzdopng:	
	$(TEX) -output-directory=img-prep/ img-prep/lichobeznik.tex
	convert -density 600 -limit memory 64MB -limit map 128MB -colorspace RGB img-prep/lichobeznik.pdf img/lichobeznik.png
	$(TEX) -output-directory=img-prep/ img-prep/parabola.tex
	convert -density 600 -limit memory 64MB -limit map 128MB -colorspace RGB img-prep/parabola.pdf img/parabola.png
	$(TEX) -output-directory=img-prep/ img-prep/trojuhelnik.tex
	convert -density 600 -limit memory 64MB -limit map 128MB -colorspace RGB img-prep/trojuhelnik.pdf img/trojuhelnik.png
	$(TEX) -output-directory=img-prep/  img-prep/CZflowch.tex
	convert -density 600 -limit memory 64MB -limit map 128MB -colorspace RGB img-prep/CZflowch.pdf img/CZflowch.png
	$(TEX) -output-directory=img-prep/  img-prep/dirtreenapng.tex
	convert -density 600 -limit memory 64MB -limit map 128MB -colorspace RGB img-prep/dirtreenapng.pdf img/dirtreenapng.png
	
html:	cleanhtml
	htlatex $(latexfile) "" "" -dhtml/
	
preklop:
	./bash/preklopitreference.sh

htmlup:
	rsync -ave ssh --delete html/manual* sshsmoderp:/home/smoderp/public_html/html/
	
pdfup:
	rsync -ave ssh --delete manual_CZ.pdf sshsmoderp:/home/smoderp/public_html/pdf/
