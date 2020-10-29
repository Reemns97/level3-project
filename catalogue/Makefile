NAME = weaveworksdemos/catalogue
DBNAME = weaveworksdemos/catalogue-db 
TAG=$(TRAVIS_COMMIT)

INSTANCE = catalogue

.PHONY: default copy test

default: test

release:
	docker build -t $(NAME) -f ./docker/catalogue/Dockerfile .

test: 
	GROUP=weaveworksdemos COMMIT=test ./scripts/build.sh
	./test/test.sh unit.py
	./test/test.sh container.py --tag $(TAG)

dockertravisbuild: 
	docker build -t $(NAME):$(TAG) -f docker/catalogue/Dockerfile-release docker/catalogue/
	docker build -t $(DBNAME):$(TAG) -f docker/catalogue-db/Dockerfile docker/catalogue-db/
	docker login -u $(DOCKER_USER) -p $(DOCKER_PASS)
	scripts/push.sh

apply:
	kubectl apply -f serviceAccount.yaml -f build-push-tasks.yaml -f build-push-taskrun.yaml -f pipeline-resource.yaml -f deploy-task.yaml -f deploy-taskrun.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pipelinerun.yaml -n test
