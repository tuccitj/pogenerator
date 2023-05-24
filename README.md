# pogenerator
POGenerator is a demo Flask application designed to facilitate form submission and generate purchase order numbers according to a customized schema. The purpose of developing this application was to effectively convey to management the significance of implementing a standardized purchase order numbering system for tracking equipment and parts orders. By incorporating a "smart" purchase order number, employees were empowered to extract crucial information regarding incoming shipments without the need to consult multiple systems, thus optimizing communication efficiency across the organization and significantly enhancing overall productivity.

Check out the [PO Number Specification](https://pages.github.com/](https://github.com/tuccitj/pogenerator/blob/main/PO_Number_Specification.pdf)
 for more details!

## Deployment and Removal Using Docker
1.) Build Container Image

    docker build -t pogenerator:latest .

2.) Starting the Container
    With an image already created, you can now run the container version of the application.

    docker run --name pogenerator -d -p 8000:5000 --rm pogenerator:latest

3.) Access application in any browser

    localhost:8000 

4.) Stopping the Container

    docker stop pogenerator

5.) Removing the Container Image

    docker image rm pogenerator
