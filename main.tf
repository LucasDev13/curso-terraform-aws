terraform {
  required_version = "1.1.9"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12345678910885522"

  tags = {
    Name        = "MY bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Lucas Pontes"
    UpdatedAt   = "2022-03-18"
  }
}