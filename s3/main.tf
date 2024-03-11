provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "b" {
  bucket = var.bucket_name
  acl    = var.acl

  versioning {
    enabled = true
  }

  tags = var.tags
}
