#! /bin/bash

unset http_proxy
unset https_proxy
PATH=/opt/cicd/sh/git:$PATH
myjx install --provider=kubernetes  --on-premise --default-admin-password='123456' \
--cloud-environment-repo http://192.168.1.228:1080/jenkins-x/cloud-environments.git \
--versions-repo http://192.168.1.228:1080/jenkins-x/jenkins-x-versions.git \
--verbose  \
--git-username root \
--git-api-token y5QBwLzXE4HYAUMXuG3A
