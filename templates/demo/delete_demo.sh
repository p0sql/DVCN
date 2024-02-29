#!/bin/bash

kubectl delete serviceaccount god
kubectl delete serviceaccount lucifer
kubectl delete serviceaccount odin
kubectl delete serviceaccount thor

kubectl delete -f pod-socket.yaml  
kubectl delete -f 8-way-role.yaml 
kubectl delete -f 8-way-rbac.yaml  
kubectl delete -f pods-ways.yaml  
kubectl delete -f secrets-role.yaml
kubectl delete -f secrets-rbac.yaml  
kubectl delete -f pod-secrets.yaml
kubectl delete -f role-grantor.yaml
kubectl delete -f pod2-priv.yaml
kubectl delete deployment tiller-deploy --namespace kube-system

