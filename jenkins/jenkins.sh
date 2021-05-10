#!/bin/bash
set -euo pipefail
/bin/jenkins-plugin-cli --verbose -d /var/jenkins_home/plugins -f /kodrex/jenkins/plugins.txt &> /kodrex/jenkins/error.txt
http://localhost:8080/safeRestart