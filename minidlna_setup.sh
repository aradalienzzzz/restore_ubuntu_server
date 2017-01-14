#!/bin/bash

#tar -zxvf minidlna-1.1.5.tar.gz
#sudo apt-get install autoconf g++ subversion linux-source linux-headers-`uname -r` build-essential tofrodos git-core subversion dos2unix make gcc automake cmake checkinstall git-core dpkg-dev fakeroot pbuilder dh-make debhelper devscripts patchutils quilt git-buildpack$
# sudo apt-get install libavutil-dev && sudo apt-get install libavcodec-dev && sudo apt-get install libavformat-dev && sudo apt-get install libavformat-dev && sudo apt-get install libjpeg-dev && sudo apt-get install libsqlite3-dev
# sudo apt-get install libexif-dev && sudo apt-get install libid3tag0-dev && sudo apt-get install libogg-dev && sudo apt-get install libvorbis-dev && sudo apt-get install libflac-dev
cd minidlna-1.1.5
./configure
sudo make
sudo make install
cd ..
sudo cp etc/minidlna.conf /etc
sudo cp etc/init.d/minidlna /etc/init.d
cd /etc/init.d
sudo chmod a+x minidlna
sudo update-rc.d minidlna defaults
