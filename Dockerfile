FROM jenkins/jnlp-slave

LABEL maintainer="Felipe Andrade"
LABEL homepage="https://github.com/felipeAndrade0918/jenkins-jnlp-node"

USER root
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh && apt install nodejs && npm -v
