output "storage_account_id" {
  description = "Storage Account ID created in Azure"
  value       = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "Storage Account Primary Access Key created in Azure"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}