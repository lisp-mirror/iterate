SOURCES=iterate-bare.tex iter-man.tex
DUMMY_INDEXES=iter-man.ind
MKIDX=makeindex
MKIDXFLAGS=-l
LATEX=latex

all: iter-bare.ps iter-man.ps iter-bare.pdf iter-man.pdf

%.dvi: %.tex
	touch $*.ind $*.idx
	${LATEX} $<
	${MKIDX} ${MKIDXFLAGS} $*.idx
	${LATEX} $<

%.ps: %.dvi
	dvips -o $@ $*.dvi

%.pdf: %.dvi
	dvipdf $*.dvi $@

clean:
	rm -f *.dvi *.log *.aux *.ind *.idx *.toc *.auxs *.ilg

shiny: clean
	rm -f *.ps *.pdf

# arch-tag: "c8f080e3-313c-11d8-abb9-000c76244c24"
