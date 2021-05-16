#!/bin/bash

cd $(dirname $0)/../..

NS="media-microsvc-4"

oc create cm configmap-nginx-conf   --from-file=configmaps/nginx.conf  --dry-run --save-config -o yaml -n ${NS} | oc apply -f - -n ${NS}

cd -
