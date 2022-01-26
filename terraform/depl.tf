provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::491894705591:role/tebogo-terraform-role"
  }
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket   = "tebogo-terraform-depl-20193"   
    key      = "test/terraform_cicd_user.tfstate"
    region   = "eu-west-1"
    role_arn = "arn:aws:iam::491894705591:role/tebogo-terraform-role"
  }
}
 

