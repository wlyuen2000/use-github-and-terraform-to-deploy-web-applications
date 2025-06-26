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
