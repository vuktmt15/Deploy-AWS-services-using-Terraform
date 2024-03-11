variable "aws_region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "app_name" {
  description = "Name of Elastic Beanstalk application"
  default     = "my-eb-app"
}

variable "environment_name" {
  description = "Name of Elastic Beanstalk environment"
  default     = "my-eb-environment"
}

variable "solution_stack" {
  description = "Elastic Beanstalk solution stack"
  default     = "64bit Amazon Linux 2023 v6.1.1 running Node.js 20"
}

variable "instance_type" {
  description = "Instance type for Elastic Beanstalk environment"
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum size of auto-scaling group"
  default     = 1
}

variable "max_size" {
  description = "Maximum size of auto-scaling group"
  default     = 4
}
