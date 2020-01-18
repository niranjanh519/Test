
#!/bin/bash


cd /var/lib/jenkins
sudo cp -r * /home/ec2-user/jenkinbackup
cd /home/ec2-user/jenkinbackup
sudo git add .
sudo git commit -m "backing up jenkin conf files"
sudo git push https://github.com/preethikruthi/pull.git master
