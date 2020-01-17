#! /bin/bash

jenkis-backup= "cd /var/lib/jenkins"
mv jenkins_backup /home/ec2-user/git_p
git add .
git commit -m "commiting jenkins conf"
git push github  https://github.com/Naen9090/jenkins_backup

if [ #? -ne 0 ] ; then
mail -s "back up failed" narenopq@gmail.com
else
mail -s "jenkins backup successful" narenopq@gmail.com
fi
crontab scheduler 00 18 * * * 
