#!/bin/bash

cd /var/lib/jenkins
sudo cp -r * /home/ec2-user/jenkbackup
cd /home/ec2-user/jenkbackup
sudo git init
sudo git add .
sudo git commit -m "jenkins backup"
sudo git push https://github.com/Kavya-MP/Jenkinsbackup.git master 

