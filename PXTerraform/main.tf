provider "aws" {
    region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket      = "tfstate-projetox"
    key         = "terraform.tfstate"
    region      = "us-east-2"
    encrypt     = true
  }
}
