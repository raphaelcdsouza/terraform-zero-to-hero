terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }

  backend "s3" {
    bucket = "raphaelcdsouza-remote-state"
    key    = "aws-vm-local-modules/terraform.tfstate"
    region = "ca-central-1"
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

module "network" {
  source = "./network"

  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.0.0/24"
  environment = var.environment
}