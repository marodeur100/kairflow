.PHONY: run build

build:
	docker build --rm -t marodeur100/docker-airflow .

run: build
	docker run -d -p 8080:8080 marodeur100/docker-airflow
	@echo airflow running on http://localhost:8080

kill:
	@echo "Killing docker-airflow containers"
	docker kill $(shell docker ps -q --filter ancestor=marodeur100/docker-airflow)

tty:
	docker exec -i -t $(shell docker ps -q --filter ancestor=marodeur100/docker-airflow) /bin/bash
