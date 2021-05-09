#!/bin/bash

host=http://localhost:8080
pluginInstallationURL=/pluginManager/installNecessaryPlugins
jenkinsRestartURL=/safeRestart

# git plugin https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin
curl -X POST -d '<jenkins><install plugin="git@2.0" /></jenkins>' --header 'Content-Type: text/xml' $host$pluginInstallationURL

# artifactory plugin https://wiki.jenkins-ci.org/display/JENKINS/Artifactory+Plugin
curl -X POST -d '<jenkins><install plugin="artifactory@2.2.1" /></jenkins>' --header 'Content-Type: text/xml' $host$pluginInstallationURL

# wait 20 sec
sleep 20

# jenkins safe restart
curl -X POST $host$jenkinsRestartURL