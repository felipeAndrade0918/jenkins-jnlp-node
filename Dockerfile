FROM jenkins/jnlp-slave

USER root
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh && apt install nodejs && npm -v