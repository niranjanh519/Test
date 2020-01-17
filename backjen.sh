#!/bin/bash

sudo cp -r /var/lib/jenkins /home/ec2-user/jenback2
cd /home/ec2-user/jenback2
sudo git add .
sudo git commit -m  "Backup"
sudo git push https://github.com/mounajain/jenback1.git master
