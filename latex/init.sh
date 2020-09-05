#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Greetings
printf "${NC}--------------------------------------------------${NC}\n"
printf "${GREEN}Hello $(whoami)! Welcome to $(hostname -s)!${NC}\n"
printf "${GREEN}You are running ROS ${ROS_VERSION} ${ROS_DISTRO} !${NC}\n"
printf "${NC}--------------------------------------------------${NC}\n"
