#! /bin/bash

myjx uninstall --context='kubernetes-admin@kubernetes'
cd /home/cicd/pv
kubectl delete pv mydemo-pv     
kubectl delete pv mydemo-pv-01  
kubectl delete pv mydemo-pv-02  
kubectl delete pv mydemo-pv-03  
kubectl delete pv mydemo-pv-04  
kubectl delete pv mydemo-pv-05  
kubectl delete pv mydemo-pv-06  
kubectl delete pv mydemo-pv-07  
rm -rf /home/cicd/pv/data*
mkdir /home/cicd/pv/data  /home/cicd/pv/data1  /home/cicd/pv/data2  /home/cicd/pv/data3  /home/cicd/pv/data4  /home/cicd/pv/data5  /home/cicd/pv/data6  /home/cicd/pv/data7  /home/cicd/pv/data8  /home/cicd/pv/data-all  /home/cicd/pv/datae4
chmod 777 /home/cicd/pv/data*
kubectl apply -f  /home/cicd/jx-shell/pv-1.json
kubectl apply -f  /home/cicd/jx-shell/pv-2.json
kubectl apply -f  /home/cicd/jx-shell/pv-3.json
kubectl apply -f  /home/cicd/jx-shell/pv-4.yaml
kubectl apply -f  /home/cicd/jx-shell/pv-5.yaml
kubectl apply -f  /home/cicd/jx-shell/pv-6.yaml
kubectl apply -f  /home/cicd/jx-shell/pv-7.yaml
kubectl apply -f  /home/cicd/jx-shell/pv.yaml
unset http_proxy
unset https_proxy
myjx install --provider=kubernetes  --on-premise --default-admin-password='123456' \
--cloud-environment-repo http://192.168.1.228:1080/jenkins-x/cloud-environments.git \
--versions-repo http://192.168.1.228:1080/jenkins-x/jenkins-x-versions.git \
--verbose  \
--git-username root \
--git-api-token y5QBwLzXE4HYAUMXuG3A
