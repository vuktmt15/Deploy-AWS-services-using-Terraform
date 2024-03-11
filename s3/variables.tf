variable "bucket_name" {
  description = "The name for the S3 bucket"
  type        = string
  default     = "my-tf-test-bucket-15082002"
}

variable "acl" {
  description = "The ACL for the S3 bucket"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "The tags for the S3 bucket"
  type        = map(string)
  default     = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
