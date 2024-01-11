terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }


 backend "s3" {
    bucket = "tfec2-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "tfec2-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}