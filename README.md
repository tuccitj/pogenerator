# pogenerator
POGenerator is a a basic flask app that submits a form and generates purchase order numbers based on a custom schema I designed. Nothing crazy, it's simply a composite key. I wrote this so I could more effectively communicate to management why it was critical for us to be have a standarized PO numbering system to track all of our equipment and parts orders. Having a "smart" po number enabled all employees to derive critical information about an incoming shipment without having to waste precious time looking it up in two or three different systems. This streamlined communication between all employees and boosted productivity drastically. See PONumberSpecification.pdf for more details.

## Deployment and Removal Using Docker
1.) Build Container Image

    docker build -t pogenerator:latest .

2.) Starting the Container
    With an image already created, you can now run the container version of the application. This is done with the docker run command, which usually takes a large number of arguments. I'm going to start by showing you a basic example:

    docker run --name pogenerator -d -p 8000:5000 --rm pogenerator:latest

3.) Stopping the Container

    docker stop pogenerator

4.) Removing the Container Image

    docker image rm pogenerator
