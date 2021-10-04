#!/bin/bash
# https://github.com/bitnami-labs/sealed-secrets/releases/tag/v0.16.0
# wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.16.0/kubeseal-linux-amd64 -O kubeseal
wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.3.0/kustomize_v4.3.0_linux_amd64.tar.gz -O kustomize_v4.3.0_linux_amd64.tar.gz
tar -xzf kustomize_v4.3.0_linux_amd64.tar.gz \

sudo install -m 755 kustomize /usr/local/bin/kustomize

