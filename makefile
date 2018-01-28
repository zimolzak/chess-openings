allpdfs = openings.pdf twomoves.pdf sparse.pdf

all : $(allpdfs)

%.pdf : %.dot
	dot -Tpdf -o $@ $<

clean :
	rm -f $(allpdfs)
