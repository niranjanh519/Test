#!/bin/bash

sudo cp -r /var/lib/jenkins /home/ec2-user/shell/backup/jenkins_backup/
cd /home/ec2-user/shell/backup/jenkins_backup/

sudo git add jenkins

sudo git commit -m "taking back up of jenkins"

sudo git push 

if [ $? -eq 0 ]; then
echo "succesful"
sudo rm -rf jenkins/
fi


