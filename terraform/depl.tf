provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::030576712672:role/terraform_role"
  }
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket   = "tebogo-s3-djsbjb"   
    key      = "test/terraform_cicd_user.tfstate"
    region   = "us-east-1"
    role_arn = "arn:aws:iam::030576712672:role/terraform_role"
  }
}
