#//bin/bash

# set REGISTRY_PASS with docker registry token first

# generate regcred.yaml file, sealer specific, hence cluster specific
kubectl --namespace workflows \
    create secret \
    docker-registry regcred \
    --docker-server=$REGISTRY_SERVER \
    --docker-username=$REGISTRY_USER \
    --docker-password=$REGISTRY_PASS \
    --docker-email=$REGISTRY_EMAIL \
    --output json \
    --dry-run=client \
    | kubeseal --controller-name=sealed-secrets-controller --format yaml \
    | tee regcred.yaml
