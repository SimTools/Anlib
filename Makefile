all: Makefiles
	(cd src; make; make install)

Makefiles:
	(cd src;  xmkmf -a)
	(cd examples/simple; xmkmf -a)

clean: Makefiles
	(cd src;  make clean)
	(cd examples/simple;  make clean)

distclean: Makefiles
	(cd src;  make distclean)
	(cd examples/simple;  make distclean)
	rm -rf lib include
