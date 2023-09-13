## Description

Here, In this template, we will create a Network Watcher resource at a particular location within a subscription and check whether it is created or not.

---
##### Pre-Requisite

* Azure Account
* Pre Login into your Azure Account

---
### Steps

* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.
* Commands :
```
-  terraform init 
-  terraform plan 
-  terraform apply 
``` 
* It will create the resource within your subscription.
* To check whether the Flog Log is created or not within the provided Network Watcher or not.

`az network watcher flow-log list --location '<location-name>' -o json`

* To check the Logs isnide the container of an storage account associated with the provided Network Watcher.

`az storage blob download-batch -d . --pattern *.json -s <container-name> --account-name <stoage-account-name>`

---

## Configuration

The following table lists the configurable parameters of the Network Watcher module with their default values.

| Parameters                                                       | Description                                              | Default       | Type   |
|------------------------------------------------------------------|----------------------------------------------------------|---------------|--------|
| network_watcher_name_VV                                          | Network Watcher Name                                     | ""            | string |
| rg_VV                                                            | Name of resource group                                   | ""            | string |
| location_VV                                                      | Name of location                                         | ""            | string |
| storage_account_name                                             | Name of Storage Account                                  | ""            | string |
| storage_account_name_tier_account                                | Type of Tier in Storage Account                          | Standard      | string |
| storage_account_name_kind_account                                | Kind of Storage Account                                  | StorageV2     | string |
| storage_account_replication_type_account                         | Replication Count of Storage Account                     | LRS           | string |
| storage_account_https_traffic_only                               | HTTP Traffic of Storage Account                          | true          | bool   |
| log_analytics_workspace_name                                     | Name of Log Analytics Workspace                          | ""            | string |
| log_analytics_workspace_sku                                      | Type of Log Analytics Workspace SKU                      | PerGB2018     | string |
| network_watcher_flow_log_name                                    | Name of Flog Log                                         | ""            | string |
| network_watcher_flow_log_name_enabled                            | Flog Log Enabled                                         | true          | bool   |
| network_watcher_flow_log_name_retention_policy_enabled           | Flog Log Retention Policy                                | true          | bool   |
| network_watcher_flow_log_name_retention_policy_days              | Retention Policy Days of Flog Log                        | 7             | number |
| network_watcher_flow_log_name_traffic_analytics_enabled          | Flog Log Traffic Analytics Enabled                       | true          | bool   |
| network_watcher_flow_log_name_traffic_analytics_interval_minutes | Flog Log Traffic Analytics Interval in Minutes           | 10            | number |
| network_security_group_id                                        | ID of Network Security Group of the resource associated  | ""            | string | 

---