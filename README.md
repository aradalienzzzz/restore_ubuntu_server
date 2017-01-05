# minidlna_setup to automatically turn mediaserver on at bootime

copy minidlna.conf to /etc and minidlna to /etc/init.d

sudo chmod +x /etc/init.d/minidlna

sudo update-rc.d minidlna defaults

Service commands:

sudo service minidlna start

sudo service minidlna stop

sudo service minidlna restart

sudo service minidlna status

sudo service minidlna rescan
