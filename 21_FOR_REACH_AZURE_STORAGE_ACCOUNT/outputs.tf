output "storage_account_europe_id" {
  description = "Storage Account ID created in Azure"
  value       = azurerm_storage_account.storage_account["europe"].id
}

output "storage_account_us_id" {
  description = "Storage Account ID created in Azure"
  value       = azurerm_storage_account.storage_account["usa"].id
}

output "storage_account_asia_id" {
  description = "Storage Account ID created in Azure"
  value       = azurerm_storage_account.storage_account["asia"].id
}

output "storage_account_brazil_id" {
  description = "Storage Account ID created in Azure"
  value       = azurerm_storage_account.storage_account["brazil"].id
}

output "sa_primary_access_key_europe" {
  description = "Storage Account Primary Access Key created in Azure"
  value       = azurerm_storage_account.storage_account["europe"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_us" {
  description = "Storage Account Primary Access Key created in Azure"
  value       = azurerm_storage_account.storage_account["usa"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_asia" {
  description = "Storage Account Primary Access Key created in Azure"
  value       = azurerm_storage_account.storage_account["asia"].primary_access_key
  sensitive   = true
}

output "sa_primary_access_key_brazil" {
  description = "Storage Account Primary Access Key created in Azure"
  value       = azurerm_storage_account.storage_account["brazil"].primary_access_key
  sensitive   = true
}