# Jenkins-Rpi
Dockerfile to create Jenkins image for raspberry pi

This dockerfile will create a Jenkins image based on Raspbian-stretch. This image will run flawlessly on a raspberry pi 4 with Ubuntu 20.04 LTS(64 bit). The official Jenkins docker images available on DockerHub is not compatible with 64bit armv7. Download this Dockerfile and use the following commands to start the Jenkins server.

COMMANDS:-
1. Build the image locally:- docker build /home/ubuntu -t jenkins-rpi
    NOTE:- /home/ubuntu is the directory where the Dockerfile is present.
2. Run the container:- docker run --name jenkins -p 8080:8080 --mount type=volume,source=jenkins,target=/root/.jenkins -d jenkins-rpi
    NOTE:- Not required to create any directories in advance. The above command will start jenkins server accessible at localhost:8080.
    
