# api-abstraction server app with Docker Container

This is the landing page for api-abstraction server app which runs in a Docker Container

There is a more detailed README file for the contained application, so do check that one out to understand the limitations, located at the following repository: https://github.com/chislon/api-abstraction/

## Instructions

To run this container, use 'docker-compose build', followed by 'docker-compose up'. 

As defined in 'docker-compose.yml', it looks for a file named 'default.json' in the myconfigs folder and mounts it into the container to use as the running configuration file with all the necessary secrets to run the application. Copy it from the application repo. 

Also defined in the yml is the default port of '3030' on the Docker host. If using with VirtualBox, it is recommended to map the port to your network adapter, because Google does not accept non-public IPs in Google API Manager under 'authorized redirect URIs'. 

## Windows Usage
To workaround to stability issues with Docker Quickstart terminal on Windows, either redirect the output of 'docker-compose up' into /dev/null (for example: 'docker-compose up > /dev/null'), or execute it from another terminal without said issues. 

As tested on Docker version 1.12.0-rc2 on Windows 10 x64
