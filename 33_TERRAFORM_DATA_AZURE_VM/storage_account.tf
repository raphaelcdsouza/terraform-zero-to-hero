resource "azurerm_storage_account" "storage_account" {
  name                     = "rcsouztestb"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = local.common_tags
}