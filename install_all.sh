#! /bin/bash

cd ~
clear

dialog                                         \
   --title 'Wait...'                           \
   --infobox '\nStarting Pepper installer...'  \
   0 0
sleep 3

INSTA(){
echo $1 | dialog --gauge 'Wait... \n
Installing Pepper packages' 0 0 0
}

INSTA 0
sudo apt-get update -y &> /dev/null
sudo apt-get upgrade -y &> /dev/null
sudo apt-get install dialog -y &> /dev/null
sudo apt-get install ros-melodic-driver-base ros-melodic-move-base-msgs ros-melodic-octomap ros-melodic-octomap-msgs ros-melodic-camera-info-manager ros-melodic-camera-info-manager-py -y &> /dev/null
sudo apt-get install ros-melodic-pepper-.* -y &> /dev/null

INSTA 50
sudo apt-get install ros-melodic-openslam-gmapping -y &> /dev/null

INSTA 63
sudo apt-get install python-wstool -y &> /dev/null

INSTA 70
sudo apt-get install ros-melodic-octomap-ros -y &> /dev/null

INSTA 75
sudo apt-get install ros-melodic-ros-melodic-tf2-geometry-msgs -y &> /dev/null

INSTA 82
sudo apt-get install ros-melodic-bfl -y &> /dev/null

INSTA 87
sudo apt-get update -y &> /dev/null

INSTA 99
sudo apt-get upgrade -y &> /dev/null

INSTA 100
sleep 1

dialog                                         \
   --title 'Wait...'                           \
   --infobox '\nStarting Pepper download...'  \
   0 0
sleep 3

DOWN(){
echo $1 | dialog --gauge 'Wait... \n
Downloading Pepper files' 0 0 0
}

DOWN 0
cd ~
cd pepper_sim_ws/src

DOWN 30
rosdep install -i -y --from-paths ./naoqi_driver

DOWN 50
cd ..

DOWN 70
catkin_make &> /dev/null

DOWN 100
echo "source ~/pepper_sim_ws/devel/setup.bash" >> ~/.bashrc
source ~/.bashrc

dialog                                         \
   --title 'Complete installation.'                           \
   --msgbox '\nPepper was successfully installed.'  \
   0 0