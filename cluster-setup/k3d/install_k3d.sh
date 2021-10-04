#!/bin/bash
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh > install.sh
# PATH=/usr/local/bin:$PATH

# shit redhat docker installation problem creator removal
sudo yum remove -y podman
sudo yum remove -y buildah

# docker installation
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo usermod -a -G docker vagrant

sudo systemctl start docker
sudo systemctl status docker --no-pager

#kubectl installation
sudo cp ./kubernetes.repo /etc/yum.repos.d
sudo yum install -y kubectl
kubectl version

# k3d installation
bash install.sh
# export KUBECONFIG=$PWD/kubeconfig.yaml
k3d version

# generate kubeconfig file and set env variable
su - vagrant -c 'k3d kubeconfig write nginx-cluster'

# this generates the kubeconfig file in the user directory
# export KUBECONFIG=/home/vagrant/.k3d/kubeconfig-nginx-cluster.yaml
# variable will be set in set_env script as it runs under source.
