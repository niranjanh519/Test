#!/bin/bash

cd /var/lib/jenkins
sudo cp -r * /home/ec2-user/jenkinbackup
cd /home/ec2-user/jenkinbackup
git init
sudo git add .
sudo git commit -m "added jenkinbackup"
sudo git push https://github.com/Vidya-51/Jenkiensbackup.git master
