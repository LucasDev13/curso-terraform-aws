provider "aws" {
  region = "us-east-1"
  access_key = "AKIATWJSWGYENRC3CYWV"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12345678910885522"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}