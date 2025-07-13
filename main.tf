resource "azurerm_resource_group" "gtre" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "stg432" {
  depends_on = [ azurerm_resource_group.gtre ]
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.gtre.name
  location                 = azurerm_resource_group.gtre.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  public_network_access_enabled = false
}