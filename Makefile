.PHONY: build

build: clean
	docker-compose build blog

start: build
	docker-compose up blog

shell: build
	docker-compose run blog bash

clean:
	docker-compose down -v