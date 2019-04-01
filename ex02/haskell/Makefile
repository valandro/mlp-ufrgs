main: lts double
clean: clean-lts clean-double
lts:
	ghc -o somalst somalst.hs
clean-lts:
	rm somalst somalst.o somalst.hi
double:
	ghc -o double double.hs
clean-double:
	rm double double.o double.hi