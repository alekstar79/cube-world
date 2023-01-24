build:
	docker build -t alekstar79/cube-world .
push:
	docker push alekstar79/cube-world
pull:
	docker pull alekstar79/cube-world
run:
	docker run -d -p 80:80 -e DOCKER_ENV=true --rm --name cube-world alekstar79/cube-world
stop:
	docker stop cube-world
