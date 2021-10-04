#!/bin/bash
# https://github.com/bitnami-labs/sealed-secrets/releases/tag/v0.16.0
# wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.16.0/kubeseal-linux-amd64 -O kubeseal
#wget https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.3.0/kustomize_v4.3.0_linux_amd64.tar.gz -O kustomize_v4.3.0_linux_amd64.tar.gz
#tar -xzf kustomize_v4.3.0_linux_amd64.tar.gz \

#curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
#chmod +x /usr/local/bin/argocd

curl -sSL -o /usr/local/bin/kubectl-argo-rollouts https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-linux-amd64
chmod +x /usr/local/bin/kubectl-argo-rollouts

# sudo install -m 755 kustomize /usr/local/bin/kustomize

