.PHONY: setup docker

IMAGE_NAME:=u110/compilerbook

setup: docker

docker:
	docker build . -t $(IMAGE_NAME)

d/%:
	docker run --rm -it \
		-v $(PWD):/work \
		-w /work \
		$(IMAGE_NAME) \
			$(@F)

test:
	$(MAKE) -C 9cc test-all
