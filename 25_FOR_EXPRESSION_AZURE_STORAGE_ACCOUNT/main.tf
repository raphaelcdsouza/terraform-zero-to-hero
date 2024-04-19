terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.99.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "rcsouzterraformstate"
    container_name       = "remote-state"
    key                  = "for-expression/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}