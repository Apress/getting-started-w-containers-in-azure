#!/bin/bash
Resource_Group=apps
Storage_Account=storageaccount$RANDOM
Location=westus
Share_Name=acifileshare

# Create the storage account
az storage account create \
    --resource-group $Resource_Group \
    --name $Storage_Account \
    --location $Location \
    --sku Standard_LRS

# Create the Azure file share
az storage share create --name $Share_Name --account-name $Storage_Account --quota 5




