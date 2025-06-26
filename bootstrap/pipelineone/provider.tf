terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0.0"
    }
  }
}

provider "github" {
  owner = "wlyuen2000"
}

provider "aws" {
  alias   = "development"
  profile = "default"
  region  = var.Region

  assume_role {

    role_arn = var.dev_role_arn
  }
  default_tags {
    tags = {
      Environment = "Development"
      Provisioner = "Terraform"
      Solution    = "AWS-GHA-TF-MSFT"
    }
  }
}
