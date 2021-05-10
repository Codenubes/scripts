#!/bin/bash
set -euo pipefail
cp /kodrex/jenkins/casc.yaml /var/jenkins_home/
/bin/jenkins-plugin-cli --verbose -d /var/jenkins_home/plugins -f /kodrex/jenkins/plugins.txt &> /kodrex/jenkins/error.txt
curl http://localhost:8080/safeRestart