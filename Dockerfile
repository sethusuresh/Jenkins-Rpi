FROM raspbian/stretch
RUN sudo apt-get update && sudo apt-get -y upgrade && apt-get -y dist-upgrade
RUN sudo apt install -y default-jdk
RUN java -version
RUN sudo apt-get install -y apt-transport-https ca-certificates
RUN sudo apt-get install -y git
RUN sudo apt-get install -y zip unzip
RUN wget https://services.gradle.org/distributions/gradle-5.2.1-bin.zip -P /tmp
RUN sudo unzip -d /opt/gradle /tmp/gradle-*.zip
ENV PATH=$PATH:/opt/gradle/gradle-5.2.1/bin
RUN gradle -v
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
RUN sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
RUN sudo apt-get update
RUN sudo apt-get install -y jenkins
CMD java -jar /usr/share/jenkins/jenkins.war
