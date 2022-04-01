PROJECT_FOLDER=$(dir $(realpath $(lastword $(MAKEFILE_LIST))))
DOCKER_IMAGE_NAME=development_guidelines
DOCKER_VOLUME='build_$(DOCKER_IMAGE_NAME)'

##############################################################################
# serve
##############################################################################

.PHONY: serve
serve: init
	
	$(call docker_run,dependencies, poetry run mkdocs serve --dev-addr 0.0.0.0:8000, --interactive --tty --publish 8000:8000)

##############################################################################
# init
##############################################################################

.PHONY: init
init:
	$(call docker_run,dependencies, poetry install)


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# functions
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

define docker_run =
	docker build \
		--file build/Dockerfile \
		--target $(1) \
		--tag $(DOCKER_IMAGE_NAME)_$(1) \
		$(PROJECT_FOLDER)
	docker volume ls -q \
		| grep $(DOCKER_VOLUME) -q \
		|| docker volume create $(DOCKER_VOLUME)
	docker run \
		--rm \
		--volume $(PROJECT_FOLDER):/repo \
		--volume $(DOCKER_VOLUME):/build \
		--user $$(id -u $${USER}):$$(id -g $${USER}) \
		$(3) \
		$(DOCKER_IMAGE_NAME)_$(1) \
		$(2)
endef
