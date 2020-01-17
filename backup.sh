#!/bin/bash
echo "moving to jenkins folder"
cd /var/lib/jenkins
echo "copying data...."
sudo cp -r * /home/ec2-user/jenkins/jenkinbackup
cd /home/ec2-user/jenkins/jenkinbackup
sudo git add . 
sudo git commit -m "backing up jenkin conf files"
echo "pushing to remote repository..."
sudo git push origin
if [ $? -eq 0 ]
then
echo "!!backup completed!!"
fi
 
