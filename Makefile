install: paper/*.tex paper/*.bib
	cd paper; \
	latexmk -pdf paper.tex
	$(MAKE) clean

deepclean:
	$(MAKE) clean
	-rm paper/paper.pdf

clean:
	-rm paper/*{.log,.aux,.bbl,.fdb_latexmk,.fls,.blg}