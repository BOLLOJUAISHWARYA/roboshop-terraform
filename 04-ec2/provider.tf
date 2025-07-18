terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 6.0.0, < 7.0.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws76s-remote-state"
    key    = "ec2"
    region = "us-east-1"
    dynamodb_table = "daws76s-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}