# Jenkins-Rpi
Dockerfile to create Jenkins image for raspberry pi

This Dockerfile will create a Jenkins image based on Raspbian-stretch. This image will run flawlessly on a Raspberry Pi 4 with Ubuntu 20.04 LTS(64 bit). The official Jenkins docker images available on DockerHub is not compatible with 64bit armv7. Download this Dockerfile and use the following commands to start the Jenkins server. since the volumes are mounted, the pipelines, jobs, configurations and workspaces are never lost even after starting a new container or restarting an old one.
The volume will be present under the path:- /var/lib/docker/volumes/jenkins

COMMANDS:-
1. Build the image locally:- docker build /home/ubuntu -t jenkins-rpi
    NOTE:- /home/ubuntu is the directory where the Dockerfile is present.
2. Run the container:- docker run --name jenkins -p 8080:8080 --mount type=volume,source=jenkins,target=/root/.jenkins -d jenkins-rpi
    NOTE:- Not required to create any directories in advance. The above command will start jenkins server accessible at localhost:8080.
    
PS:- During the initial launch, jenkins will prompt for password which will be present in the file initialAdminPassword inside the directory  /var/lib/docker/volumes/jenkins/secrets.

NOTE:-
This repository is linked to the DockerHub. So after evry commit, the DockerHub will automatically build the images and update in the DockerHub repository with the tag "latest"
    
