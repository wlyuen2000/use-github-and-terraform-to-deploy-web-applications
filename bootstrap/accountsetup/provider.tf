provider "aws" {
  alias   = "primary"
  profile = "default"
  region  = var.Region
}

provider "aws" {
  alias   = "development"
  profile = "default"
  region  = var.Region

  default_tags {
    tags = {
      Environment = "Development"
      Provisioner = "Terraform"
      Solution    = "AWS-GHA-TF-MSFT"
    }
  }
}

provider "aws" {
  alias   = "testing"
  profile = "default"
  region  = var.Region

  default_tags {
    tags = {
      Environment = "Testing"
      Provisioner = "Terraform"
      Solution    = "AWS-GHA-TF-MSFT"
    }
  }
}

provider "aws" {
  alias   = "production"
  profile = "default"
  region  = var.Region

  default_tags {
    tags = {
      Environment = "Production"
      Provisioner = "Terraform"
      Solution    = "AWS-GHA-TF-MSFT"
    }
  }
}