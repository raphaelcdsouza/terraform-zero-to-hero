terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "rcsouzterraformstate"
    container_name       = "remote-state"
    key                  = "commands/terraform.tfstate"
  }
}

provider "aws" {
  region = "ca-central-1"

  default_tags {
    tags = {
      owner      = "raphaelcdsouza"
      managed-by = "terraform"
    }
  }
}