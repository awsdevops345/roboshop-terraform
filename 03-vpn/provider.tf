terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

   backend "s3" {
    bucket = "lockbucket-terraform"
    key    = "vpn"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
 
}

provider "aws" {
  region = "us-east-1"
}