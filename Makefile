.PHONY: testing_plan
CONTAINER_ID := $(shell docker run -it -d fedora bash) 

testing_plan:
	docker exec -i $(CONTAINER_ID) bash < dev_setup.sh
	docker exec -i $(CONTAINER_ID) bash < check_installation.sh
	docker stop $(CONTAINER_ID)
	docker rm $(CONTAINER_ID)
