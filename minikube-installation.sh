#!/bin/bash
sudo yum install -y curl conntrack-tools
sudo yum install -y VirtualBox
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
curl -LO "https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
sudo minikube start --driver=virtualbox
sudo minikube start --driver=docker
sudo minikube status
kubectl get nodes

