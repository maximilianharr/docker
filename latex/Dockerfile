# 
FROM ubuntu:20.04

# Update
RUN apt-get update 

# run dpkg (behind other tools like Apt) without interactive dialogue
ARG DEBIAN_FRONTEND=noninteractive

# Latex
RUN apt-get install -y texlive-full
RUN apt-get install -y texmaker

# xserver session (lets you open gui's in docker)
RUN apt-get install -y libxext6
RUN apt-get install -y libxtst6
RUN apt-get install -y xauth

# Init cookie/credential file for xauth
RUN touch ~/.Xauthority

# Add user
RUN echo 'root:root' | chpasswd
RUN useradd -ms /bin/bash ubuntu

# Run lat
RUN mkdir -p /media/docker/latex
USER ubuntu
WORKDIR /media/docker/latex
CMD texmaker