
# Configure the Azure provider
data "azurerm_resource_group" "rg" {
  name = var.rg
}

resource "azurerm_storage_account" "storage" {
  name                     = var.nombre_storage
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags = var.tags
}
