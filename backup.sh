#!/bin/bash
mkdir -p /home/ec2-user/tmp2
cd /home/ec2-user/tmp2
git clone https://github.com/vinaycit/backup.git
echo "WELCOME"
cd backup
sudo cp -r /var/lib/jenkins /home/ec2-user/tmp2/backup/
sudo git add .
sudo git commit -m "committed"
sudo git push https://github.com/vinaycit/backup.git master 
