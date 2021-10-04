#!/bin/bash
# https://github.com/bitnami-labs/sealed-secrets/releases/tag/v0.16.0
wget https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.16.0/kubeseal-linux-amd64 -O kubeseal
sudo install -m 755 kubeseal /usr/local/bin/kubeseal 
