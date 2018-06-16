DOCKER_REPO = edward2a/lint-python

.PHONY: build publish

build:
	docker build -t ${DOCKER_REPO} .

publish:
	docker push ${DOCKER_REPO}
