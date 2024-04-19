terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.99.0"
    }
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

provider "azurerm" {
  features {}
}