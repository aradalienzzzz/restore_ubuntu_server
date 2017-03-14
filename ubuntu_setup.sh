#!/bin/bash
# dependencies needed for android/build environment


# fixes hung_task_timeout_secs and blocked for more than 120 seconds problem
# sudo nano /etc/sysctl.conf
# vm.dirty_background_ratio = 5
# vm.dirty_ratio = 10

sudo rm -rfv systemd-timesyncd.service
sudo apt install ntpdate

# intel x52 chipset bug fix
GRUB_CMDLINE_LINUX_DEFAULT="iommu=no-intremap intel_iommu=off"
