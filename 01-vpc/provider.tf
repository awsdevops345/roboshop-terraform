terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "lockbucket-terraform"
    key    = "vpc"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
}

}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}