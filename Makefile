.PHONY: all
default: all;

download:
	git clone --depth=1 -b stable https://github.com/phacility/libphutil.git
	git clone --depth=1 -b stable https://github.com/phacility/arcanist.git
	git clone --depth=1 -b stable https://github.com/phacility/phabricator.git

build: download optimize

clean:
	rm -rf libphutil && rm -rf arcanist && rm -rf phabricator

optimize:
	rm -rf ./*/.git/

migrate:
	bin/storage upgrade --force

all: build optimize
