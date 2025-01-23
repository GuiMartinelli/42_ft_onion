all: build run

build:
	docker build --tag 'onion_service' .

run:
	docker run -p 80:80 --detach 'onion_service'

stop:
	docker stop $(shell docker ps -q --filter ancestor='onion_service')