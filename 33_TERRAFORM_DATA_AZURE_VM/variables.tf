variable "location" {
  description = "Region where the resources will be deployed in Azure"
  type        = string
  default     = "Canada Central"
}

variable "infra_version" {
  description = "Version of the infrastructure"
  type = number
  default = 2
}