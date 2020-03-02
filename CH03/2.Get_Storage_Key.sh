#!/bin/bash
echo $Storage_Account

STORAGE_KEY=$(az storage account keys list --resource-group $Resource_Group --account-name $Storage_Account --query "[0].value" --output tsv)

echo $STORAGE_KEY