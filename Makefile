.PHONY: submoudles

.DEFAIULT := all

all:
	dune test
clean:
	dune clean

submodules:
	git submodule update --init
	(cd ppx_expect && git remote add   upstream https://github.com/janestreet/ppx_expect.git)
	(cd ppx_expect && git remote set-url origin git@github.com:Kakadu/ppx_expect.git)
	(cd ppx_inline_test && git remote add   upstream https://github.com/janestreet/ppx_inline_test.git)
	(cd ppx_inline_test && git remote set-url origin git@github.com:Kakadu/ppx_inline_test.git)