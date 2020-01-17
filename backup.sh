#!/bin/bash

cd /var/lib/jenkins
sudo cp -r * /home/ec2-user/jenkins/jenkinsbackup
cd /home/ec2-user/jenkins/jenkins/jenkinsbackup
sudo git add *
sudo git commit -m "edited"
sudo git push origin

