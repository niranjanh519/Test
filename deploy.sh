#!/bin/bash

cd /var/lib/jenkins

ls -a | grep -w .git

if [ $? -ne 0 ];then
git init
fi

touch .gitignore
echo workspace >> .gitignore
git add *
git commit -m "Jenkins_Backup on `date`"
git push https://github.com/kiransurya035/Test-1.git master

if [ $? -eq 0 ];then

   x=`echo -e "hi, Jenkins Backup \n thank you"`
   echo $x | mail -s "Jenkins backup success on `date`"  kirankrishnaiah705@gmail.com
else
   echo $x | mail  -s "Jenkins backup failed on `date`"   kirankrishnaiah705@gmail.com

fi
