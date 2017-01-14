#!/bin/bash
# dependencies needed for android/build environment
sudo apt-get install autoconf g++ subversion linux-source linux-headers-`uname -r` build-essential tofrodos git-core subversion dos2unix make gcc automake cmake checkinstall git-core dpkg-dev fakeroot pbuilder dh-make debhelper devscripts patchutils quilt git-buildpack$
sudo apt-get install libavutil-dev libavcodec-dev libavformat-dev libavformat-dev libjpeg-dev libsqlite3-dev libexif-dev libid3tag0-dev libogg-dev libvorbis-dev libflac-dev

# untar minidlna
tar -zxvf minidlna-1.1.5.tar.gz
cd minidlna-1.1.5

# configure, build, and install minidlna
./configure
sudo make
sudo make install
cd ..

# copy configs to proper dirs
sudo cp etc/minidlna.conf /etc
sudo cp etc/init.d/minidlna /etc/init.d

# execute script to boot minidlna at boot
cd /etc/init.d
sudo chmod a+x minidlna
sudo update-rc.d minidlna defaults
