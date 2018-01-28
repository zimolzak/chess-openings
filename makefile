allpdfs = openings.pdf twomoves.pdf sparse.pdf fdp.pdf

all : $(allpdfs)

%.pdf : %.dot
	dot -Tpdf -o $@ $<

fdp.pdf : sparse.dot
	fdp -Tpdf -o fdp.pdf sparse.dot

clean :
	rm -f $(allpdfs)
