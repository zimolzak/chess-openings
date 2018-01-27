all : out.pdf two.pdf

out.pdf : openings.dot
	dot -Tpdf -o out.pdf openings.dot

two.pdf : twomoves.dot
	dot -Tpdf -o two.pdf twomoves.dot

clean :
	rm -f *.pdf
