#!/bin/bash

kubectl create serviceaccount god
kubectl create serviceaccount lucifer
kubectl create serviceaccount odin
kubectl create serviceaccount thor

kubectl create token god
kubectl create token lucifer
kubectl create token odin
kubectl create token thor

kubectl apply -f long-lived-token.yaml
kubectl apply -f pod-socket.yaml  
kubectl apply -f 8-way-role.yaml 
kubectl apply -f 8-way-rbac.yaml  
kubectl apply -f pods-ways.yaml  
kubectl apply -f secrets-role.yaml
kubectl apply -f secrets-rbac.yaml  
kubectl apply -f pod-secrets.yaml
kubectl apply -f role-grantor.yaml
kubectl apply -f pod2-priv.yaml
kubectl apply -f pod-privileged.yaml
kubectl apply -f sa-god.yaml

cd linux-amd64
sudo chmod +x helm
sudo cp helm /usr/local/bin/helm
helm init
