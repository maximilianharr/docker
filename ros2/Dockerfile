FROM ros:foxy-ros-base

# update
RUN apt-get update 

# xserver session (lets you open gui's in docker)
RUN apt-get install -y libxext6
RUN apt-get install -y libxtst6
RUN apt-get install -y xauth

# Python
RUN apt-get update
RUN apt-get install -y python3-pip

# ROS Demo package
RUN apt-get install -y ros-foxy-turtlesim

# ROS packages (apt-get update required here!)
RUN apt-get update
RUN apt-get install -y ~nros-foxy-rqt*

# Install python packages
COPY requirements.txt /tmp/requirements.txt
WORKDIR /tmp
RUN pip3 install -r requirements.txt

# Add user
RUN echo 'root:root' | chpasswd
RUN useradd -ms /bin/bash ubuntu
USER ubuntu
WORKDIR /media/docker/workspace/

# Setup ROS
RUN echo "source /opt/ros/foxy/setup.bash" >> /home/ubuntu/.bashrc
RUN echo "export ROS_LOCALHOST_ONLY=0" >> /home/ubuntu/.bashrc
RUN echo "export ROS_DOMAIN_ID=1" >> /home/ubuntu/.bashrc

# Setup x session
RUN touch ~/.Xauthority

CMD chmod +x /home/ubuntu/workspace/docker/ros/init.sh
ENTRYPOINT ["/home/ubuntu/workspace/docker/ros/init.sh"]


