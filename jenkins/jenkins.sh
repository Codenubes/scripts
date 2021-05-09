#!/bin/bash

cd /var/jenkins_home/war/WEB-INF/lib/
chmod -R 755 /var/jenkins_home/war/WEB-INF/lib
ls -ltr | echo
java -jar  /var/jenkins_home/war/WEB-INF/lib/cli-2.291.jar  -s http://localhost:8080 install-plugin < /kodrex/jenkins/plugins.txt
java -jar  /var/jenkins_home/war/WEB-INF/lib/cli-2.291.jar  -s http://localhost:8080 restart