#!/bin/bash
sudo cp -r /var/lib/jenkins /home/ec2-user/jenkins_backup/
cd /home/ec2-user/jenkins_backup/

sudo git add jenkins

sudo git commit -m "taking backup"

sudo git push https://github.com/ajayroyal06/Jenkins_Backup.git master

if [ $? -eq 0 ];then
echo "successful"
sudo rm -rf jenkins/
fi

