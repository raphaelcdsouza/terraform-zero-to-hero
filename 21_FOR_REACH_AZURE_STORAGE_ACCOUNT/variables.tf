variable "location" {
  description = "Region where the resources will be created in Azure"
  type        = map(string)
  default = {
    "europe" = "West Europe"
    "usa"    = "East US"
    "asia"   = "Japan East"
    "brazil" = "Brazil South"
  }
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
