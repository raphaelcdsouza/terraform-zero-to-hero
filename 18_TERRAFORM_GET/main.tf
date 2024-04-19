terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}

provider "aws" {
  region = "ca-central-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.7.1"
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.2"
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"
}