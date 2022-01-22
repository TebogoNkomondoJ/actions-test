provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::037865805188:role/terraform_role"
  }
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket   = "test-bucket-tebogo-1262636565v"
    key      = "test/terraform_cicd_user.tfstate"
    region   = "us-east-1"
    role_arn = "arn:aws:iam::037865805188:role/terraform_role"
  }
}
