#! /bin/bash
for i in {1..1000} ;do
echo "start"
   jx get apps -n default
jx get apps -n jx
jx get apps -n jx-a
jx get apps -n jx-a-1
jx get apps -n jx-b
jx get apps -n jx-production
jx get apps -n jx-staging
jx get apps -n kube-node-lease
jx get apps -n kube-public
jx get apps -n kube-system
 sleep 5
done;
