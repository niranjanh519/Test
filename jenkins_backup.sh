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
x=`echo -e "hi, jenkins backup \n thank you"`
echo $x | mail -s "jenkins backup success on `date`"  bashazaid19@gmail.com 
else
echo $x | mail  -s "jenkins backup failed on `date`" bashazaid19@gmail.com 
fi
