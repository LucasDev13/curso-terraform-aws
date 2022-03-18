provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12345678910885522123123123123"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Lucas Pontes"
    UpdatedAt   = "2022-03-18"
  }
}