FROM jenkins:latest
USER root
RUN pwd
RUN ls -la
RUN apt-get update
RUN apt-get install -y python-pip
