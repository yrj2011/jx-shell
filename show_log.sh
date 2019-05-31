#! /bin/bash
for i in {1..1000} ;do

   echo $i;
   kubectl log   yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-git-source-yrj2011-jx-spring-60-master-zcxgc 
kubectl log   yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-git-merge 
kubectl log  yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-setup-jx-git-credentials 
kubectl log  yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-build-mvn-deploy 
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-build-skaffold-version 
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-build-container-build
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-build-post-build
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-promote-changelog 
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-promote-helm-release
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-promote-jx-promote 
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  nop
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-credential-initializer-6cbj4
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-working-dir-initializer-7c4qw
kubectl log    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c  build-step-place-tools
kubectl logs    yrj2011-jx-spring-60-master-8-from-build-pack-j8zfs-pod-fb2e6e  -c build-step-build-post-build
done;
