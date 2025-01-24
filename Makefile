all: build run

build:
	docker build --tag 'onion_service' .

run:
	docker run -p 80:80 -p 4242:4242 --detach 'onion_service'

stop:
	docker stop $(shell docker ps -q --filter ancestor='onion_service')

clean:
	docker system prune
