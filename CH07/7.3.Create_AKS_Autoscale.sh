#!/bin/bash
az aks create --resource-group apps \
 --name aks \
  --node-count 1 \
  --node-vm-size Standard_DS1_v2 \
  --enable-addons monitoring \
  --generate-ssh-keys $true \
   --enable-cluster-autoscaler \
  --min-count 1 \
  --max-count 3