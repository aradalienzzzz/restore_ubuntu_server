#!/bin/bash
# dependencies needed for android/build environment
sudo apt-get install autoconf g++ subversion linux-source linux-headers-`uname -r` build-essential tofrodos git-core subversion dos2unix make gcc automake cmake checkinstall git-core dpkg-dev fakeroot pbuilder dh-make debhelper devscripts patchutils quilt git-buildpackage pristine-tar git yasm checkinstall cvs mercurial
sudo apt-get install libavutil-dev libavcodec-dev libavformat-dev libavformat-dev libjpeg-dev libsqlite3-dev libexif-dev libid3tag0-dev libogg-dev libvorbis-dev libflac-dev

# fixes hung_task_timeout_secs and blocked for more than 120 seconds problem
# sudo nano /etc/sysctl.conf
# vm.dirty_background_ratio = 5
# vm.dirty_ratio = 10
