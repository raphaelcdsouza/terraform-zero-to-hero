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
    key    = "provider/terraform.tfstate"
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

provider "aws" {
  alias = "us"

  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "raphaelcdsouza"
      managed-by = "terraform"
    }
  }
}

provider "aws" {
  alias = "australia"

  region = "ap-southeast-2"

  default_tags {
    tags = {
      owner      = "raphaelcdsouza"
      managed-by = "terraform"
    }
  }
}

module "vpc" {
  providers = {
    aws.provider_1 = aws.us
    aws.provider_2 = aws.australia
  }

  source = "./vpc"
}