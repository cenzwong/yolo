####################INSTALL Yolov3#############################

sudo apt install git
sudo apt install make gcc g++
git clone https://github.com/pjreddie/darknet.git
cd darknet
make


# Test with the sample model and image
wget https://pjreddie.com/media/files/yolov3.weights
./darknet detect cfg/yolov3.cfg yolov3.weights data/dog.jpg
./darknet detector test cfg/coco.data cfg/yolov3.cfg yolov3.weights data/dog.jpg

# Multiple image
./darknet detect cfg/yolov3.cfg yolov3.weights
data/horses.jpg

# Tiny Yolo
wget https://pjreddie.com/media/files/yolov3-tiny.weights
./darknet detect cfg/yolov3-tiny.cfg yolov3-tiny.weights data/dog.jpg


####################INSTALL Yolov4#############################
# https://github.com/AlexeyAB/darknet YOLOv4
git clone https://github.com/AlexeyAB/darknet
sudo apt install git
sudo apt install make gcc g++
# ./build.sh Seems like only for CMake
# change Makefile
sudo make







####################INSTALL OPENCV#############################
# https://docs.opencv.org/master/d7/d9f/tutorial_linux_install.html
# install both of the quick start -- Seems like no need
########
# Install minimal prerequisites (Ubuntu 18.04 as reference)
sudo apt update && sudo apt install -y cmake g++ wget unzip
# Download and unpack sources
wget -O opencv.zip https://github.com/opencv/opencv/archive/master.zip
unzip opencv.zip
# Create build directory
mkdir -p build && cd build
# Configure
cmake  ../opencv-master
# Build
sudo cmake --build .
#########
# Install minimal prerequisites (Ubuntu 18.04 as reference)
sudo apt update && sudo apt install -y cmake g++ wget unzip
# Download and unpack sources
wget -O opencv.zip https://github.com/opencv/opencv/archive/master.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/master.zip
unzip opencv.zip
unzip opencv_contrib.zip
# Create build directory and switch into it
mkdir -p build && cd build
# Configure
sudo cmake -DOPENCV_EXTRA_MODULES_PATH=../opencv_contrib-master/modules ../opencv-master
# Build
sudo cmake --build .
#############
sudo apt install libopencv-dev



# # recompile it with OpenCV
# ## x -> this will not work, this only install the python version for python to call open cv sudo apt install python3-opencv
# # https://docs.opencv.org/4.5.0/d7/d9f/tutorial_linux_install.html
# # https://linuxize.com/post/how-to-install-opencv-on-ubuntu-18-04/
# sudo apt install build-essential cmake git pkg-config libgtk-3-dev \
#     libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
#     libxvidcore-dev libx264-dev libjpeg-dev libpng-dev libtiff-dev \
#     gfortran openexr libatlas-base-dev python3-dev python3-numpy \
#     libtbb2 libtbb-dev libdc1394-22-dev
# mkdir ~/opencv_build && cd ~/opencv_build
# git clone https://github.com/opencv/opencv.git
# git clone https://github.com/opencv/opencv_contrib.git
# cd ~/opencv_build/opencv
# mkdir build && cd build
# cmake -D CMAKE_BUILD_TYPE=RELEASE \
#     -D CMAKE_INSTALL_PREFIX=/usr/local \
#     -D INSTALL_C_EXAMPLES=ON \
#     -D INSTALL_PYTHON_EXAMPLES=ON \
#     -D OPENCV_GENERATE_PKGCONFIG=ON \
#     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_build/opencv_contrib/modules \
#     -D BUILD_EXAMPLES=ON ..
# make -j8 # Modify the -j flag according to your processor. If you do not know the number of cores your processor, you can find it by typing nproc.
# sudo make install
# #######################or with official site#######



## Change the make file and 1 the OPENCV constant
make
