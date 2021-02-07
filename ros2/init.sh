#!/bin/bash
RED='\033[0;31m'
NC='\033[0m' # No Color

# Greetings
printf "${NC}--------------------------------------------------${NC}\n"
printf "${RED}Hello $(whoami)! Welcome to $(hostname -s)!${NC}\n"
printf "${NC}--------------------------------------------------${NC}\n"

# Commands
source /opt/ros/foxy/setup.bash
cd /home/$(whoami)/workspace
jupyter-notebook --port 8891 --ip 0.0.0.0 --NotebookApp.token='ros2'

printf "${RED} Success ${NC}\n"
firefox &