.PHONY: carts catalogue orders user queue-master payment shipping front-end 

up: carts catalogue orders user queue-master payment shipping front-end 

carts:
	kubectl apply -f carts/tekton/serviceAccount.yaml -f carts/tekton/pipeline-resource.yaml -f carts/tekton/build-push-tasks.yaml -f  carts/tekton/deploy-task.yaml -f  carts/tekton/build-push-taskrun.yaml -f  carts/tekton/deploy-taskrun.yaml -f carts/tekton/pipeline.yaml -n test
	kubectl create -f carts/tekton/pipelinerun.yaml -n test

catalogue:
	kubectl apply -f catalogue/tekton/serviceAccount.yaml -f catalogue/tekton/pipeline-resource.yaml -f catalogue/tekton/build-push-tasks.yaml -f  catalogue/tekton/deploy-task.yaml -f  catalogue/tekton/build-push-taskrun.yaml -f  catalogue/tekton/deploy-taskrun.yaml -f catalogue/tekton/pipeline.yaml -n test
	kubectl create -f catalogue/tekton/pipelinerun.yaml -n test


orders:
	kubectl apply -f orders/tekton/serviceAccount.yaml -f orders/tekton/pipeline-resource.yaml -f orders/tekton/build-push-tasks.yaml -f  orders/tekton/deploy-task.yaml -f  orders/tekton/build-push-taskrun.yaml -f  orders/tekton/deploy-taskrun.yaml -f orders/tekton/pipeline.yaml -n test
	kubectl create -f orders/tekton/pipelinerun.yaml -n test

user:
	kubectl apply -f user/tekton/serviceAccount.yaml -f user/tekton/pipeline-resource.yaml -f user/tekton/build-push-tasks.yaml -f  user/tekton/deploy-task.yaml -f  user/tekton/build-push-taskrun.yaml -f  user/tekton/deploy-taskrun.yaml -f user/tekton/pipeline.yaml -n test
	kubectl create -f user/tekton/pipelinerun.yaml -n test

queue-master:
	kubectl apply -f queue-master/tekton/serviceAccount.yaml -f queue-master/tekton/pipeline-resource.yaml -f queue-master/tekton/build-push-tasks.yaml -f  queue-master/tekton/deploy-task.yaml -f  queue-master/tekton/build-push-taskrun.yaml -f  queue-master/tekton/deploy-taskrun.yaml -f queue-master/tekton/pipeline.yaml -n test
	kubectl create -f queue-master/tekton/pipelinerun.yaml -n test

payment:
	kubectl apply -f payment/tekton/serviceAccount.yaml -f  payment/tekton/build-push-tasks.yaml -f  payment/tekton/clone-task.yaml -f  payment/tekton/deploy-task.yaml -f  payment/tekton/pipeline.yaml -n test
	kubectl create -f payment/tekton/pvc.yaml -f  payment/tekton/pipelinerun.yaml -n test  

shipping:	
	kubectl apply -f shipping/tekton/serviceAccount.yaml -f  shipping/tekton/build-push-tasks.yaml -f  shipping/tekton/clone-task.yaml -f  shipping/tekton/deploy-task.yaml -f  shipping/tekton/pipeline.yaml -n test
	kubectl create -f shipping/tekton/pvc.yaml -f  shipping/tekton/pipelinerun.yaml -n test  

front-end:
	kubectl apply -f front-end/tekton/serviceAccount.yaml -f  front-end/tekton/build-push-tasks.yaml -f  front-end/tekton/clone-task.yaml -f  front-end/tekton/deploy-task.yaml -f  front-end/tekton/pipeline.yaml -n test
	kubectl create -f front-end/tekton/pvc.yaml -f  front-end/tekton/pipelinerun.yaml -n test  
