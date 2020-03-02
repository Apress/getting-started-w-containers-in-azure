az backup protection backup-now  \
--resource-group apps \
--backup-management-typ AzureIaasVM \
--vault-name backups \
--container-name LinuxHost3 \
--item-name LinuxHost3 \
--retain-until 30-12-2019
