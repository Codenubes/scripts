#!/bin/bash
set -euo pipefail
/bin/jenkins-plugin-cli --verbose -f /kodrex/jenkins/plugins.txt &> /kodrex/jenkins/error.txt