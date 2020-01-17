#!/bin/bash
cd /var/lib/jenkins
sudo cp -r * /home/ec2-user
cd /home/ec2-user/
sudo git add *
sudo git commit -m "backup"
sudo git push https://github.com/Kesava2443/Jenkins2.git master
