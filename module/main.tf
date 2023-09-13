resource "azurerm_resource_group" "example" {
  name     = var.rg_VV
  location = var.location_VV
}

resource "azurerm_network_watcher" "example" {
  name                = "${var.network_watcher_name_VV}-${var.location_VV}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}


resource "azurerm_storage_account" "test" {
  name                = var.storage_account_name_VV
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  account_tier              = var.storage_account_name_tier_account_VV
  account_kind              = var.storage_account_name_kind_account_VV
  account_replication_type  = var.storage_account_replication_type_account_VV
  enable_https_traffic_only = var.storage_account_https_traffic_only_VV
}

resource "azurerm_log_analytics_workspace" "test" {
  name                = var.log_analytics_workspace_name_VV
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = var.log_analytics_workspace_sku_VV
}

resource "azurerm_network_watcher_flow_log" "test" {
  name                      = var.network_watcher_flow_log_name_VV
  network_watcher_name      = azurerm_network_watcher.example.name
  resource_group_name       = azurerm_resource_group.example.name
  network_security_group_id = var.network_security_group_id    ##change here nsg id
  storage_account_id        = azurerm_storage_account.test.id
  enabled                   = var.network_watcher_flow_log_name_enabled_VV

  retention_policy {
    enabled = var.network_watcher_flow_log_name_retention_policy_enabled_VV
    days    = var.network_watcher_flow_log_name_retention_policy_days_VV
  }

  traffic_analytics {
    enabled               = var.network_watcher_flow_log_name_traffic_analytics_enabled_VV
    workspace_id          = azurerm_log_analytics_workspace.test.workspace_id
    workspace_region      = azurerm_log_analytics_workspace.test.location
    workspace_resource_id = azurerm_log_analytics_workspace.test.id
    interval_in_minutes   = var.network_watcher_flow_log_name_traffic_analytics_interval_minutes_VV
  }
}