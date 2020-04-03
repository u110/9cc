.PHONY: test clean

CFLAGS=-std=c11 -g -static
IMAGE_NAME:=u110/compilerbook

all: bash

bash:
	docker run --rm -it \
		-v $(PWD):/work \
		-w /work \
		$(IMAGE_NAME) \
			bash

d/%:
	docker run --rm -u root\
		-v $(CURDIR):/work \
		-w /work \
		$(IMAGE_NAME) \
			$(@F)

test-all: d/make\ test

9cc: 9cc.c

clean:
	rm -f 9cc *.o *~ tmp*

test: clean 9cc
	./test.sh

step2: 9cc
	./9cc '5+20-4'
