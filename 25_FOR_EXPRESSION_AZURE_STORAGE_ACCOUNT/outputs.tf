output "storage_account_ids" {
  description = "Storage Account IDs created in Azure"
  value       = [for sa in azurerm_storage_account.storage_account : sa.id]
}

output "sa_primary_access_keys" {
  description = "Storage Account Primary Access Keys created in Azure"
  value       = { for key, sa in azurerm_storage_account.storage_account : key => sa.primary_access_key }
  sensitive   = true
}
