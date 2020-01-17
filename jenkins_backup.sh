#!/bin/bash

sudo cp -r /var/lib/jenkins /home/ubuntu/backup/backup
cd /home/ubuntu/backup/backup
sudo git add jenkins
sudo git commit -m "daily backup"
sudo git push https://github.com/gpramodh/backup.git 


