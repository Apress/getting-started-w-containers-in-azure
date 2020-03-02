#!/bin/bash
az container create \
    --resource-group $Resource_Group \
    --name nginxvapp \
    --registry-username deployrg \
    --registry-login-server deployrg.azurecr.io \
    --image deployrg.azurecr.io/nginx:latest \
    --registry-password accesskeypassword\
    --dns-name-label nginxvol \
    --ports 80 \
    --azure-file-volume-account-name $Storage_Account \
    --azure-file-volume-account-key $STORAGE_KEY \
    --azure-file-volume-share-name $Share_Name \
    --azure-file-volume-mount-path /aci/


