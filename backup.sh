#!/bin/bash

cd /var/lib/jenkins
sudo cp -r * /home/ec2-user/jenkins/jenkinsbackup
cd /home/ec2-user/jenkins/jenkinsbackup
sudo git init
sudo git add *
sudo git commit -m "edited"
sudo git push https://github.com/chethangowdas134/test.git master
