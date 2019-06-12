#!/bin/sh
kubectl apply -f jenkins-pv-pvc.yaml

helm install --name jenkins --set Persistence.ExistingClaim=jenkins --set Master.ServiceType=NodePort --set Master.NodePort=30808 --namespace devops stable/jenkins
helm install --name jenkins --set Persistence.ExistingClaim=jenkinn2 stable/jenkins --namespace devops