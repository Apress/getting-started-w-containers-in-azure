#!/bin/bash
az vm create --name "LinuxSpotVM" \
             --resource-group  "apps" \
             --image "UbuntuLTS" \
             --size Standard_DS2_v2 \
             --location westus \
             --admin-username  vadmin \
             --data-disk-sizes-gb 50 \
             --admin-password enterpassswordhere \
             --generate-ssh-keys \
              --priority Spot \
              --max-price -1
