PREFIX ?= /usr/local
 
.PHONY: install uninstall empty

empty:
	@echo "No action specified.\nRun 'make install', to install."

install:
	cp -rf swallow ${PREFIX}/bin/

uninstall:
	rm -rf ${PREFIX}/bin/swallow

