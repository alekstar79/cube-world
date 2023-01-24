# Cube World

## Description  
Pure Javascript application that demonstrates the functionality of canvas. When developing the application, code decomposition and an object-oriented approach were applied.

### Installation and use
You can install the script by cloning/downloading this repository and running (dev):

````bash
npm run serve
````

or (prod):

````shell
npm run build
````

It is also possible to pull the image from the docker hub `docker pull alekstar79/cube-world` and run `docker run -d -p 80:80 -e DOCKER_ENV=true --rm --name cube-world alekstar79/cube-world`.
For ease of use, a Makefile has been created with short commands [ pull, run, stop ].

![Visualization of the script](src/assets/review.gif "Cube World")
