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
git push https://github.com/bhuvaneshwaran29/jenkins_backup.git

if [ $? -eq 0 ];then
        body=`echo -e "Hi,\n Jenkins Backup "`

        echo $body | mail -s "jenkins backup success on `date`" - c bhuvaneshwar29@gmail.com
else
        echo $body | mail  -s "jenkins backup failed on `date`" - c bhuvaneshwar29@gmail.com
fi
