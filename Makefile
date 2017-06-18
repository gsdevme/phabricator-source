.PHONY: all
default: all;

build:
	git clone --depth=1 -b stable https://github.com/phacility/libphutil.git
	git clone --depth=1 -b stable https://github.com/phacility/arcanist.git
	git clone --depth=1 -b stable https://github.com/phacility/phabricator.git

clean:
	rm -rf libphutil && rm -rf arcanist && rm -rf phabricator

optimize:
	rm -rf ./*/.git/

all: build optimize
