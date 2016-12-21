# install dependencies
echo "instalacion de dependencias"
sudo apt-get update
sudo apt-get install  build-essential
sudo apt-get install  cmake
sudo apt-get install  libgtk2.0-dev
sudo apt-get install  pkg-config
sudo apt-get install  python-numpy python-dev
sudo apt-get install  libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install  libjpeg-dev libpng-dev libtiff-dev libjasper-dev
 
sudo apt-get -qq install libopencv-dev build-essential checkinstall cmake pkg-config yasm libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libqt4-dev libgtk2.0-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils
 
# download opencv-2.4.13
echo "descarga opencv-2.4.13"
wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.13/opencv-2.4.13.zip
unzip opencv-2.4.13.zip
cd opencv-2.4.13
mkdir build
cd build
 
# compile and install
echo "Compilacion e instalacion"
cmake -G "Unix Makefiles" -D CMAKE_CXX_COMPILER=/usr/bin/g++ CMAKE_C_COMPILER=/usr/bin/gcc -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D BUILD_FAT_JAVA_LIB=ON -D INSTALL_TO_MANGLED_PATHS=ON -D INSTALL_CREATE_DISTRIB=ON -D INSTALL_TESTS=ON -D ENABLE_FAST_MATH=ON -D WITH_IMAGEIO=ON -D BUILD_SHARED_LIBS=OFF -D WITH_GSTREAMER=ON ..
make all -j4 # 4 cores
sudo make install
 
echo "Instalacion Completa"
