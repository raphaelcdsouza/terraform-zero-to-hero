variable "location" {
  description = "Region where Azure resources will be created"
  type        = string
  default     = "Canada Central"
}

variable "account_tier" {
  description = "Azure Storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Azure Storage account replication type"
  type        = string
  default     = "LRS"
}