output "sas_token" {
  description = "Image container SAS token"
  value       = data.azurerm_storage_account_blob_container_sas.sas_token.sas
  sensitive   = true
}

output "container_url" {
  description = "Image container URL"
  value       = azurerm_storage_container.container.id
}