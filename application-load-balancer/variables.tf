variable "region" {
  description = "AWS region"
  default     = "ap-southeast-1"
}

variable "alb_sg_name" {
  description = "Name for the ALB security group"
  default     = "alb-sg"
}

variable "alb_sg_description" {
  description = "Description for the ALB security group"
  default     = "Security group for ALB"
}

variable "alb_ingress_port" {
  description = "Port for ALB ingress rules"
  type        = number
  default     = 80
}

variable "alb_cidr_blocks" {
  description = "CIDR blocks for ALB ingress rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "alb_name" {
  description = "Name for the ALB"
  default     = "my-alb"
}

variable "alb_internal" {
  description = "Whether the ALB is internal"
  type        = bool
  default     = false
}

variable "alb_load_balancer_type" {
  description = "Type of the load balancer"
  default     = "application"
}

variable "alb_subnets" {
  description = "Subnets for the ALB"
  type        = list(string)
  default     = ["subnet-0455f6a73f1e2e450", "subnet-0d8c8a0114efbb948", "subnet-01590d60af76e5917"]
}

variable "alb_tags" {
  description = "Tags for the ALB"
  type        = map(string)
  default     = {
    Name = "my-alb"
  }
}
