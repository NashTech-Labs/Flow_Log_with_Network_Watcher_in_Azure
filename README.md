## Description

Here, In this template, we will create a Flow log that provides logs of Network resources at a particular location within a subscription.

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

| Parameters                                                          | Description                                              | Default       | Type   |
|---------------------------------------------------------------------|----------------------------------------------------------|---------------|--------|
| network_watcher_name_VV                                             | Network Watcher Name                                     | ""            | string |
| rg_VV                                                               | Name of resource group                                   | ""            | string |
| location_VV                                                         | Name of location                                         | ""            | string |
| storage_account_name_VV                                             | Name of Storage Account                                  | ""            | string |
| storage_account_name_tier_account_VV                                | Type of Tier in Storage Account                          | Standard      | string |
| storage_account_name_kind_account_VV                                | Kind of Storage Account                                  | StorageV2     | string |
| storage_account_replication_type_account_VV                         | Replication Count of Storage Account                     | LRS           | string |
| storage_account_https_traffic_only_VV                               | HTTP Traffic of Storage Account                          | true          | bool   |
| log_analytics_workspace_name_VV                                     | Name of Log Analytics Workspace                          | ""            | string |
| log_analytics_workspace_sku_VV                                      | Type of Log Analytics Workspace SKU                      | PerGB2018     | string |
| network_watcher_flow_log_name_VV                                    | Name of Flog Log                                         | ""            | string |
| network_watcher_flow_log_name_enabled_VV                            | Flog Log Enabled                                         | true          | bool   |
| network_watcher_flow_log_name_retention_policy_enabled_VV           | Flog Log Retention Policy                                | true          | bool   |
| network_watcher_flow_log_name_retention_policy_days_VV              | Retention Policy Days of Flog Log                        | 7             | number |
| network_watcher_flow_log_name_traffic_analytics_enabled_VV          | Flog Log Traffic Analytics Enabled                       | true          | bool   |
| network_watcher_flow_log_name_traffic_analytics_interval_minutes_VV | Flog Log Traffic Analytics Interval in Minutes           | 10            | number |
| network_security_group_id_VV                                        | ID of Network Security Group of the resource associated  | ""            | string | 

---