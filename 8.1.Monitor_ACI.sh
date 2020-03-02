CONTAINER_GROUP_NAME=$(az container show --resource-group apps --name nginxwebapp02 --query id --output tsv)
az monitor metrics list --resource $CONTAINER_GROUP_NAME --metric CPUUsage --output table
az monitor metrics list --resource $CONTAINER_GROUP_NAME --metric MemoryUsage --output table
az monitor metrics list --resource $CONTAINER_GROUP_NAME --metric MemoryUsage --dimension containerName --output table

#view logs
az container logs --resource-group apps  --name nginxwebapp02
