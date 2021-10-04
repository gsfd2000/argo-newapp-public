#!/bin/bash
# curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
# chmod +x /usr/local/bin/argocd

# run as root /sudo 

# Download the binary
# curl -sLO https://github.com/argoproj/argo/releases/download/v3.1.8/argo-linux-amd64.gz
curl -sLO https://github.com/argoproj/argo-workflows/releases/download/v3.1.8/argo-linux-amd64.gz

# Unzip
gunzip ./argo-linux-amd64.gz

# Make binary executable
chmod +x argo-linux-amd64

# Move binary to path
mv ./argo-linux-amd64 /usr/local/bin/argo

#  set root owner of argo file in destination
chown root:root /usr/local/bin/argo

# Test installation
/usr/local/bin/argo version
