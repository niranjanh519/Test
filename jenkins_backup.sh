#!/bin/bash
cd /var/lib/jenkins
ls -a | grep -w .git
if [ $? -ne 0 ];then
	git init
fi
touch .gitignore
echo workspace >> .gitignore
git add *
git commit -m "jenkins_backup on `date`"
git push https://github.com/abhi6666/jenkins_backup.git master
if [ $? -eq 0 ];then
body=`echo -e "hi, jenkins backup \n thank you"`
echo $body | mail -s "jenkins backup success on `date`" - c pradee.dev.999@gmail.com abhishekds6666@gmail.com
else
echo $body | mail  -s "jenkins backup failed on `date`" - c pradeedev92@gmail.com abhishekds6666@gmail.com 
fi
