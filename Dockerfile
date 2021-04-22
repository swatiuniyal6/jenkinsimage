FROM UBUNTU
ENV DEBIAN_FRONTEND=non-interactive
RUN wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
RUN echo "deb https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update -y
RUN apt install openjdk-8-jdk
RUN apt-get install jenkins
RUN service jenkins status
EXPOSE 8080
