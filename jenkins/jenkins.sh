#!/bin/bash

cd /var/jenkins_home/war/WEB-INF
chmod -R 755 /var/jenkins_home/war/WEB-INF
java -jar jenkins-cli.jar  -s http://localhost:8080 install-plugin maven-plugin:3.10
java -jar jenkins-cli.jar  -s http://localhost:8080 restart