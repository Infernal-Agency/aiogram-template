init:
	./deploy/instal_docker.sh
build:
	docker-compose -f deploy/docker-compose.yml --project-directory . build api
run:
	docker-compose -f deploy/docker-compose.yml --project-directory . up --build
