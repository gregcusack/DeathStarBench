#!/bin/bash

NS="media-microsvc-8"

cd $(dirname $0)/..

oc apply -f networking/istio-gateway/mediamicrosvc-gateway.yaml -n ${NS}

cd -
