REPO?=mozhou001/ks-installer
TAG:=$(shell git rev-parse --abbrev-ref HEAD | sed -e 's/\//-/g')

build:
	docker build . --file Dockerfile --tag $(REPO):$(TAG)
push:
	docker push $(REPO):$(TAG)
all: build push
