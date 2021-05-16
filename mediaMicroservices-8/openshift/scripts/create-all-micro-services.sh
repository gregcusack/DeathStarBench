#!/bin/bash

cd $(dirname $0)/..

NS="media-microsvc-8"

oc create namespace ${NS}

for service in *service.yaml
do
  oc apply -f $service --namespace ${NS}
done

cd -
