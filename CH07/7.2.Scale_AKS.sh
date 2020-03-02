#!/bin/bash
az aks scale --resource-group apps --name aks --node-count 2 --nodepool-name nodepool1