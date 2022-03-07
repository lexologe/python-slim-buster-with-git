NAME := python-slim-buster-with-git
VERSION := $(file < VERSION)

help:
	@echo VERSION=$(VERSION)
	@echo "make bump - Increase VERSION by one."
	@echo "make image - Builds the current Dockerfile as VERSION."
	@echo "make push - Logs in to Docker Hub and pushes the current image."
	@echo "make tag - Tags the current image as the latest one."

bump: VERSION
	@echo $$(( $(VERSION) + 1 )) > VERSION

image: Dockerfile
	docker build -t lexologe/$(NAME):v${VERSION} .

push:
	docker login
	docker push lexologe/$(NAME):v${VERSION}

tag:
	docker tag lexologe/$(NAME):v${VERSION} lexologe/$(NAME):latest
	docker push lexologe/$(NAME):latest

