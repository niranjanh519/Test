#!/bin/bash

cd /var/lib/jenkins/
if [ ! -d .git ];then
	git init
fi
git add *
git commit -m "backup on `date`"
git push https://github.com/lakshmanpvl/jenkins_backup.git master
cd /home/ubuntu/
