build:
	docker build --tag reemns97/front-end .

run:
	docker run -itd --rm -p 8087:8079 reemns97/front-end

apply:
	kubectl apply -f serviceAccount.yaml -f task.yaml -f clone.yaml -f deply-task.yaml -f pipeline.yaml -n test

create:
	kubectl create -f pvc.yaml -f pipelinerun.yaml -n test
