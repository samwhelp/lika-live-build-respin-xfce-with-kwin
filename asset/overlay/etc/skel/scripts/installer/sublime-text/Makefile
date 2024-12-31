
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make install'
	@echo
.PHONY: help




install:
	@./install.sh
.PHONY: install




clean:
	rm ./*.deb
.PHONY: clean




gdebi-install:
	sudo apt-get install gdebi
.PHONY: gdebi-install


alt-install-by-gdebi:
	sudo gdebi *.deb
.PHONY: alt-install-by-gdebi
