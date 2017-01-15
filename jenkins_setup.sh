# install webserver
sudo apt-get install nginx
sudo service nginx status

# install jenkins
sudo wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
sudo service jenkins status
echo "\nUse the below password for Jenkins for its initial setup\n==============================================\n"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo "\n==============================================\n"

# share group rom permissions and set rr file/directory permissions
#sudo groupadd roms
#sudo adduser aclegg2011 roms
#sudo adduser jenkins roms
#sudo chmod -R 777 ./7.1
#sudo chgrp -R roms ./7.1
# modify /etc/default/jenkins change to $JENKINS_USER="aclegg2011"
chown -R aclegg2011:aclegg2011 /var/lib/jenkins 
chown -R aclegg2011:aclegg2011 /var/cache/jenkins
chown -R aclegg2011:aclegg2011 /var/log/jenkins
# /etc/init.d/jenkins restart
