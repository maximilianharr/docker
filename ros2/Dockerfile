# For details on how to build and run see README.md
# https://hub.docker.com/_/ros/
FROM ros:noetic

# Add user
RUN useradd -ms /bin/bash ubuntu

CMD chmod +x /home/ubuntu/workspace/docker/ros2/init.sh
ENTRYPOINT ["/home/ubuntu/workspace/docker/ros2/init.sh"]