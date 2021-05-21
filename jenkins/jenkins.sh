#!/bin/bash
set -euo pipefail
cp /kodrex/jenkins/casc.yaml /var/jenkins_home/
wget -O /tmp/apache-maven-3.8.1-bin.tar.gz "https://apachemirror.sg.wuchna.com/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz"
tar -xvf /tmp/apache-maven-3.8.1-bin.tar.gz -C /var/jenkins_home/
/bin/jenkins-plugin-cli --verbose -d /var/jenkins_home/plugins -f /kodrex/jenkins/plugins.txt &> /kodrex/jenkins/error.txt
curl http://localhost:8080/safeRestart