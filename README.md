
# Damn Vulnerable Cloud Native

A vulnerable K8S lab which demonstrate common misconfigurations use cases you can see in your life of security engineer. All theses vulnerabilities can lead to the compromission of a node or the entire cluster.

Available vulnerabilities : 
- Privileged pods
- Exposed socket
- Secrets RBAC misconfigurations
- Pods RBAC misconfigurations
- Bindings RBAC in a pod

```bash
NAME               READY   STATUS    RESTARTS   AGE
pod-privileged     1/1     Running   0          7h17m
pod-role-grantor   1/1     Running   0          7h17m
pod-secrets-demo   1/1     Running   0          7h17m
pod-ways           1/1     Running   0          7h17m
socket-demo        1/1     Running   0          7h17m
```
To deploy this environment, you need a K8S cluster. Two options are possible, use Minikube or deploy a cluster with kubeadm or kubespray.
## Installation

```bash
$ cd templates/demo
$ ./deploy-demo.sh
```
## Usage

You can enter in the vulnerable pods with kubectl. I didn't make any vulnerable frontend app for more fun, maybe in the future to improve the quality.
```bash
$ kubectl exec -it <pod> -n <namespace> -- /bin/bash
```


## Used By

This project is used in my blog to explain stuff about K8S security. Follow this link for more details : https://p0sql.xyz/2024/02/27/kub-kuberne-cough-cough/

