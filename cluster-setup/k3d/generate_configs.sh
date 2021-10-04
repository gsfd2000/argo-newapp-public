#!/bin/sh

#output current BASE_HOST
echo $BASE_HOST

# adjust kubernetes config files with actual BASE_HOST name

cat ../../kustomize/base/ingress.yaml \
    | sed -e "s@acme.com@staging.argo-combined-app.$BASE_HOST@g" \
    | tee ../../kustomize/overlays/staging/ingress.yaml

cat ../../kustomize/overlays/production/rollout.yaml \
    | sed -e "s@vfarcic@$REGISTRY_USER@g" \
    | tee ../../kustomize/overlays/production/rollout.yaml

cat ../../kustomize/overlays/staging/deployment.yaml \
    | sed -e "s@vfarcic@$REGISTRY_USER@g" \
    | tee ../../kustomize/overlays/staging/deployment.yaml
