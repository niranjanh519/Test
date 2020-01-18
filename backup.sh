cd /var/lib/jenkins
ls -a | grep -w .git
if [$? -ne 0 ]; then
      git init
fi
touch .gitignore
echo workspace >> .gitignore
git add *
git commit -m "jenkins_backup on `date`"
git push https://github.com/rashmi1203/backup_script.git master
if [ $? -eq 0 ]; then
body= `echo -e "hi, jenkins backup \n thank you"`
echo $body | mail -s "jenkins backup success on `date`" -c rashminr20@gmail.com
else
echo $body | mail -s "jenkins backup failed on `date`" -c rashminr20@gmail.com
fi
