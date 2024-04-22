resource "azurerm_resource_group" "rg" {
  name     = "rg-data-source"
  location = "West Europe"

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage" {
  name                     = "rcsouzdatasource"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_storage_container" "container" {
  name                  = "images"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "blob"
}

data "azurerm_storage_account_blob_container_sas" "sas_token" {
  connection_string = azurerm_storage_account.storage.primary_connection_string
  container_name    = azurerm_storage_container.container.name
  https_only        = true

  ip_address = "174.7.69.173"

  start  = "2024-04-22"
  expiry = "2024-05-22"

  permissions {
    read   = true
    add    = true
    create = true
    write  = true
    delete = true
    list   = true
  }
}
