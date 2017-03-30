all:
	bin/build.sh

open_all:
	OPEN_US=true bin/build.sh

test:
	bin/test.sh

install_dependencies_ubuntu:
	sudo apt-get install ruby-dev; \
	gem uninstall redcarpet; \
	gem install redcarpet -v 3.1.2; \
	gem install mdpress; \

install_dependencies_gentoo:
	sudo gem uninstall redcarpet; \
	sudo gem install redcarpet -v 3.1.2; \
	sudo gem install mdpress; \
