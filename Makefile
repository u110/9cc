.PHONY: setup docker

IMAGE_NAME:=compilerbook

setup: docker

docker:
	docker build -t $(IMAGE_NAME) https://www.sigbus.info/compilerbook/Dockerfile

d/%:
	docker run --rm -it \
		-v $(PWD):/work \
		-w /work \
		$(IMAGE_NAME) \
			$(@F)
