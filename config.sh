#!/bin/bash

# Baixe o arquivo yaml
curl -O https://raw.githubusercontent.com/yurilchuk/mysql-kubernetes/main/mysql-kube.yaml

# Obtenha os valores do ConfigMap
NFS_PATH=$(kubectl get configmap mysql-config -o jsonpath='{.data.mysql-path}')
SERVER_IP=$(kubectl get configmap mysql-config -o jsonpath='{.data.server-ip}')
STORAGE=$(kubectl get configmap mysql-config -o jsonpath='{.data.storage}')
ROOT_PASSWORD=$(kubectl get configmap mysql-config -o jsonpath='{.data.root-password}')

# Substitua as variáveis no arquivo yaml
sed -i "s|<NFS_PATH>|${NFS_PATH}|g" mysql-kube.yaml
sed -i "s|<SERVER_IP>|${SERVER_IP}|g" mysql-kube.yaml
sed -i "s|<STORAGE>|${STORAGE}|g" mysql-kube.yaml
sed -i "s|<ROOT_PASSWORD>|${ROOT_PASSWORD}|g" mysql-kube.yaml

# Aplique o arquivo yaml
kubectl apply -f mysql-kube.yaml