terraform {
  required_version = "~> 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }

  cloud {
    organization = "benniemosher-dev"
    workspaces {
      name = "quest-infra"
    }
  }
}

provider "aws" {
  profile = var.aws-profile
  region  = var.region

  default_tags {
    tags = {
      Application = "Quest"
      Comment     = "Made by benniemosher via Terraform."
      Company     = "Rearc"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare-config.api-token
}
