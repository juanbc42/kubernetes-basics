default: 
	@echo "this is a simple deployment of kubernetes with a makefile for the steps to do an update/apply"

help
	@echo prep			prepares the environment showing the DEPLOYMENT_NAME
	@echo apply			apply the deployment in kubectl based on the DEPLOYMENT_NAME
	@echo rollout		rollout the deploy, same as apply
	@echo status		show deploy status
	@echo history		show deploy history
	@echo rollback		rollback deploy from last deployment

prep: 
	@echo "Deployment name is: ${DEPLOYMENT_NAME}"

apply: 
	kubectl apply -f deployment.yaml

rollout: 
	kubectl apply -f deployment.yaml

status:
	kubectl rollout status ${DEPLOYMENT_NAME}

history: 
	kubectl rollout history ${DEPLOYMENT_NAME}

rollback: 
	kubectl rollout undo ${DEPLOYMENT_NAME}


