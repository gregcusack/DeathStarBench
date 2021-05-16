#!/bin/bash

cd $(dirname $0)/..

NS='media-microsvc-5'

for service in *service.yaml
do
  ./scripts/update-micro-service.sh --micro-service=$service --namespace=${NS}
done

cd -
