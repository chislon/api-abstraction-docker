# api-abstraction server app with Docker Container

This project allows the [api-abstraction server app](https://github.com/chislon/api-abstraction) to runs in a Docker Container. 

There is a more detailed README file for the contained application, so do check that one out to understand the limitations, located at the following repository: https://github.com/chislon/api-abstraction/

## Instructions

As defined in 'docker-compose.yml', it looks for a file named 'default.json' in a folder named 'myconfig', and mounts it into the Docker container to use as the configuration file for the running application. This file includes the necessary secrets to run the application. A template is available from [the application's repo](https://github.com/chislon/api-abstraction). 

Also defined in the yml, expect the application to run at the port of '3030' on the Docker host. 

If using this with VirtualBox, since Google does not accept non-public IPs (such as 192.168.*.*) within Google API Manager under 'authorized redirect URIs', it may be required to workaround the issue by using network adapter port forwarding rules info the VirtualBox virtual machine to redirect requests to localhost loopback. 

To run this, use 'docker-compose build', followed by 'docker-compose up' against the Docker container virtual machine. 

## Windows Usage
To workaround to stability issues with Docker Quickstart terminal on Windows, either redirect the output of 'docker-compose up' into /dev/null (for example: 'docker-compose up > /dev/null') when executing, or execute it from another terminal without said issues. 

As tested on Docker version 1.12.0-rc2 on Windows 10 x64

## Contributions

This is a practice application, so I don't really expect pull requests or contributions. Email is the best way to reach me, my first name at Gmail.
