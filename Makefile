.PHONY: google-images-download

SHELL=/usr/bin/env bash

google-images-download: google-images-download-build google-images-download-push

google-images-download-build:
	source ./google-images-download/.env; \
	docker build ./google-images-download -t $$IMAGE_NAME:$$IMAGE_TAG; \
	docker tag $$IMAGE_NAME:$$IMAGE_TAG $$IMAGE_NAME:latest

google-images-download-push:
	source ./google-images-download/.env; \
	docker push $$IMAGE_NAME:$$IMAGE_TAG; \
	docker push $$IMAGE_NAME:latest
