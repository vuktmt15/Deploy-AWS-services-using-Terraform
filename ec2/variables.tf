variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
  type        = string
  default     = "ami-001440bcc4ddffcf1"
}

variable "instance_type" {
  description = "The type of instance to launch"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "The availability zone for the instance"
  type        = string
  default     = "ap-southeast-1a"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
  default     = "keypb"
}

variable "security_group_ids" {
  description = "The IDs of the security groups to associate with the instance"
  type        = list(string)
  default     = ["sg-06bc83b8fae8e9aac"]
}

variable "tags" {
  description = "The tags for the instance"
  type        = map(string)
  default     = {
    Name = "Instance Example"
  }
}
