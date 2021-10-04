#!/bin/sh
# Source: https://gist.github.com/48f44d3974db698d3127f52b6e7cd0d3

###########################################################
# Automation of Everything                                #
# How To Combine Argo Events, Workflows, CD, and Rollouts #
# https://youtu.be/XNXJtxkUKeY                            #
###########################################################

# run via command 
# source ./set_env.sh to execute in actual shell
# https://stackoverflow.com/questions/18547881/shell-script-to-set-environment-variables

# Requirements:
# - k8s v1.19+ cluster with nginx Ingress

# Replace `[...]` with the GitHub organization or the username
export GH_ORG=gsfd2000

# Replace `[...]` with the base host accessible through NGINX Ingress
export BASE_HOST=argo.172.18.0.2.nip.io

export REGISTRY_SERVER=https://index.docker.io/v1/

# Replace `[...]` with the registry username
export REGISTRY_USER=gsfd2000

# Replace `[...]` with the registry password
#export REGISTRY_PASS='..'
# set on cli, not to be stored in GIT

# Replace `[...]` with the registry email
export REGISTRY_EMAIL=gsfd2000@gmail.com

# Replace `[...]` with the GitHub token
# set on cli, not to be stored in GIT
#export GH_TOKEN=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

# Replace `[...]` with the GitHub email
export GH_EMAIL=gsfd2000@gmail.com

# setting kubeconfig variable for user vagrant 
export KUBECONFIG=/home/vagrant/.k3d/kubeconfig-nginx-cluster.yaml
