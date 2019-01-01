TARGET=scheme

SOURCES = \
    type.ml \
    scheme.ml \
    lexer.mll

OCAMLBUILD = ocamlbuild -tags afl_instrument -pkg alcotest

default: fuzz

all: byte native test fuzz

byte:
	$(OCAMLBUILD) $(TARGET).byte

native:
	$(OCAMLBUILD) $(TARGET).native

test:
	$(OCAMLBUILD) test.byte; ./test.byte
fuzz:
	$(OCAMLBUILD) fuzz.native;
clean:
	$(OCAMLBUILD) -clean
