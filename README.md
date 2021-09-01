# Pepper complete package

![Pepper](https://www.softbankrobotics.com/emea/themes/custom/softbank/images/360/pepper.png)

Md Rakin Sarder

Pepper_sim_ws
====================
ROS Melodic, Gazebo, Ubuntu 18.04, Rviz

**Clone the source:**

```
$ cd ~
$ git clone https://github.com/tunchunairarko/pepper_sim_ws.git
```


**Install Pepper ROS:**
Install the dependencies and the official released packaged
```
$ sudo apt-get install ros-melodic-driver-base ros-melodic-move-base-msgs ros-melodic-octomap ros-melodic-octomap-msgs ros-melodic-camera-info-manager ros-melodic-camera-info-manager-py
$ sudo apt-get install ros-melodic-pepper-.*
$ cd src
$ rosdep install -i -y --from-paths ./naoqi_driver
$ cd ..
$ catkin_make
```



**Install automated scripts:**
This project contains a set of bash scripts that take care of executing various operations, such as Gazebo sim, Rviz, SLAM, mapping and localization. The code to make the scripts global are given below:
```
$ cd pepper_sim_ws/src/.shfiles
$ chmod a+x -v *.sh
$ echo "export PATH=$PATH:~/pepper_sim_ws/src/.shfiles" >> ~/.bashrc
$ source ~/.bashrc
```

**Basic Operation:**

Script options:

> Gazebo simulation

> Control

> Localization

> SLAM

> Rviz



**Install environment:**

Additional details can be found here: [ROS + Pepper](https://github.com/manoelpla/scriptpepper)



