
# Configure the Azure provider

resource "azurerm_storage_account" "storage" {
  name                     = var.nombre_storage
  resource_group_name      = var.rg
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = var.tags
}
