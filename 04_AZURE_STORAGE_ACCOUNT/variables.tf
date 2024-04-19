variable "location" {
  description = "Region where the resources will be created in Azure"
  type        = string
  default     = "Canada Central"
}

variable "account_tier" {
  description = "Account Storage Tier in Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Account Replication Type of Storage Account in Azure"
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "Name of the Resource Group in Azure"
  type        = string
  default     = "rg-curso-terraform"
}

variable "storage_account_name" {
  description = "Name of the Storage Account in Azure"
  type        = string
  default     = "raphaelcdsouzaterraform"
}

variable "container_name" {
  description = "Name of the Storage Container in Azure"
  type        = string
  default     = "container-curso-terraform"
}