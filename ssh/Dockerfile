FROM ubuntu:rolling
ENV HOME /home/jo
RUN apt-get update && apt-get install -y openssh-client
RUN useradd jo -m
USER 1000:1000
WORKDIR /home/jo
RUN mkdir /home/jo/.ssh
COPY id_rsa /home/jo/.ssh/
COPY id_rsa.pub /home/jo/.ssh/
