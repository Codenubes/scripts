#!/bin/bash

/usr/local/bin/install-plugins.sh < /kodrex/jenkins/plugins.txt
java -jar  /var/jenkins_home/war/WEB-INF/lib/cli-2.291.jar  -s http://localhost:8080 restart