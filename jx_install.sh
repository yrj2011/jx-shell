#! /bin/bash

myjx uninstall --context='kubernetes-admin@kubernetes'
cd /opt/cicd/pv
rm -rf data*
kubectl delete pv mydemo-pv     
kubectl delete pv mydemo-pv-01  
kubectl delete pv mydemo-pv-02  
kubectl delete pv mydemo-pv-03  
kubectl delete pv mydemo-pv-04  
kubectl delete pv mydemo-pv-05  
kubectl delete pv mydemo-pv-06  
kubectl delete pv mydemo-pv-07  
mkdir data  data1  data2  data3  data4  data5  data6  data7  data8  data-all  datae4
chmod 777 data*
kubectl apply -f  pv-1.json
kubectl apply -f  pv-2.json
kubectl apply -f  pv-3.json
kubectl apply -f  pv-4.yaml
kubectl apply -f  pv-5.yaml
kubectl apply -f  pv-6.yaml
kubectl apply -f  pv-7.yaml
kubectl apply -f  pv.yaml
unset http_proxy
unset https_proxy
PATH=/opt/cicd/sh/git:$PATH
myjx install --provider=kubernetes  --on-premise --default-admin-password='123456' \
--cloud-environment-repo http://192.168.1.228:1080/jenkins-x/cloud-environments.git \
--versions-repo http://192.168.1.228:1080/jenkins-x/jenkins-x-versions.git \
--verbose  \
--git-username root \
--git-api-token y5QBwLzXE4HYAUMXuG3A
