variable "network_watcher_name_VV" {
  default     = ""
  description = "Network Watcher Name"
  type        = string
}

variable "rg_VV" {
  default     = ""
  description = "Name of resource group"
  type        = string
}

variable "location_VV" {
  default     = ""
  description = "Name of location"
  type        = string
}


###################
# Storage Account #
###################

variable "storage_account_name_VV" {
  default     = ""
  description = "Name of Storage Account"
  type        = string
}

variable "storage_account_name_tier_account_VV" {
  default     = ""
  description = "Type of Tier in Storage Account"
  type        = string
}

variable "storage_account_name_kind_account_VV" {
  default     = ""
  description = "Kind of Storage Account"
  type        = string
}


variable "storage_account_replication_type_account_VV" {
  default     = ""
  description = "Replication Count of Storage Account"
  type        = string
}

variable "storage_account_https_traffic_only_VV" {
  default     = true
  description = "HTTP Traffic of Storage Account"
  type        = bool
}


###################
#   Flow Log     #
###################


variable "network_watcher_flow_log_name_VV" {
  default     = ""
  description = "Name of Flog Log"
  type        = string
}

variable "network_watcher_flow_log_name_enabled_VV" {
  default     = true
  description = "Flog Log Enabled"
  type        = bool
}

variable "network_watcher_flow_log_name_retention_policy_enabled_VV" {
  default     = true
  description = "Flog Log Retention Policy"
  type        = bool
}

variable "network_watcher_flow_log_name_retention_policy_days_VV" {
  default     = 7
  description = "Retention Policy Days of Flog Log"
  type        = number
}

variable "network_watcher_flow_log_name_traffic_analytics_enabled_VV" {
  default     = true
  description = "Flog Log Traffic Analytics Enabled"
  type        = bool
}
variable "network_watcher_flow_log_name_traffic_analytics_interval_minutes_VV" {
  default     = 10
  description = "Flog Log Traffic Analytics Interval in Minutes"
  type        = number
}

#############################
#   Analytics Workspace     #
#############################


variable "log_analytics_workspace_name_VV" {
  default     = ""
  description = "Name of Log Analytics Workspace"
  type        = string
}

variable "log_analytics_workspace_sku_VV" {
  default     = ""
  description = "Type of Log Analytics Workspace SKU"
  type        = string
}

#############################
#   NSG ID of Resource    #
#############################

variable "network_security_group_id_VV" {
  default     = ""
  description = "ID of Network Security Group of the resource associated"
  type        = string
}