M = $(shell printf "\033[34;1m▶\033[0m")

.PHONY: help
help: ## Prints this help message
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

######################
### MAIN FUNCTIONS ###
######################

.PHONY: start
start: ## Start the prism docker container
	$(info $(M) Starting an instance of prism)
	@docker stack rm prism
	@docker stack deploy -c ./docker/docker-compose-swarm.yml prism

.PHONY: stop
stop: ## Stopping running prism instances
	$(info $(M) Stopping prism instance)
	@docker stack rm prism

.DEFAULT_GOAL := help