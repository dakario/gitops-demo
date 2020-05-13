VERSION=0.0.1
TAG ?= $(shell git log -1 --format=%h)
IMAGE=gitops-demo
ORG=beopenit
CURRENTDIR ?= $(shell pwd)

APP_VERSION = "v.$(VERSION).${TAG}"
APP_NAME = "gitops-demo"
ORGANISATION_NAME = "beopenit"
PROJECT_NAME = "gitops-demo"

IMAGE_NAME = "${ORGANISATION_NAME}/${APP_NAME}"
IMAGE_FULL_NAME = "${IMAGE_NAME}:${APP_VERSION}"

build_image:
	@echo "Build docker image dev"
	docker build -t ${IMAGE_FULL_NAME} .

push_image:
	@echo "Push docker image master"
	docker push ${IMAGE_FULL_NAME}
