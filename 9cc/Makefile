.PHONY: test clean

CFLAGS=-std=c11 -g -static
IMAGE_NAME:=compilerbook

all: bash

d/%:
	docker run --rm -it \
		-v $(PWD):/work \
		-w /work \
		$(IMAGE_NAME) \
			$(@F)

test-all: d/make\ test

bash: d/bash

9cc: 9cc.c

test: 9cc
	./test.sh

clean:
	rm -f 9cc *.o *~ tmp*

