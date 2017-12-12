BUILD_IMAGE=coolapp_build
PORT=8761

PHONY: build test deploy

build:
	docker build -t $(BUILD_IMAGE) .

test:
	docker run -it -p $(BUILD_IMAGE) make test

deploy:
	docker run -it $(BUILD_IMAGE) make deploy
