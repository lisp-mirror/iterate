SOURCES=iterate-bare.tex iter-man.tex
DUMMY_INDEXES=iter-man.ind
MKIDX=makeindex
MKIDXFLAGS=-l
LATEX=latex

all: iterate-bare.ps iter-man.ps

%.dvi: %.tex
	touch $*.ind $*.idx
	${LATEX} $<
	${MKIDX} ${MKIDXFLAGS} $*.idx
	${LATEX} $<

%.ps: %.dvi
	dvips -o $@ $<

clean:
	rm -f *.dvi *.log *.aux *.ind *.idx *.toc *.auxs *.ilg

shiny: clean
	rm -f *.ps

# arch-tag: "c8f080e3-313c-11d8-abb9-000c76244c24"
