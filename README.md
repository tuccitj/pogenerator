# pogenerator
## Deployment and Removal
1.) Build Container Image

    docker build -t pogenerator:latest .

2.) Starting the Container
    With an image already created, you can now run the container version of the application. This is done with the docker run command, which usually takes a large number of arguments. I'm going to start by showing you a basic example:

    docker run --name pogenerator -d -p 8000:5000 --rm pogenerator:latest

3.) Stopping the Container

    docker stop pogenerator

4.) Removing the Container Image

    docker image rm pogenerator
