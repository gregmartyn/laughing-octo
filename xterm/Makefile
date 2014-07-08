
COMMAND := xterm
IMAGE := $(USER)/$(COMMAND)
DOCKER := $(shell which docker)

default: run

Dockerfile: Dockerfile.sh
	sh $< > $@

build: Dockerfile
	$(DOCKER) build -t $(IMAGE) .

run: build
	$(DOCKER) run \
		--rm \
		-it \
		--hostname="$(shell hostname)-$(IMAGE)" \
		--env DISPLAY \
		--env HOME \
		--env PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin \
		--env SESSION_MANAGER \
		--env SSH_AUTH_SOCK \
		--env XAUTHORITY \
		--privileged \
		--user $(USER) \
		--workdir $(shell pwd) \
		-v $(HOME):$(HOME) \
		-v $(SSH_AUTH_SOCK):$(SSH_AUTH_SOCK) \
		-v /tmp/:/tmp/ \
		$(IMAGE) \
		$(COMMAND)

