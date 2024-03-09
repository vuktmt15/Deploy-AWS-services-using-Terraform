provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-15082002"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
