provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_security_group" "alb_sg" {
  name        = "alb-sg"
  description = "Security group for ALB"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_lb" "my_alb" {
  name               = "my-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [aws_security_group.alb_sg.id]

  subnets = ["subnet-0455f6a73f1e2e450", "subnet-0d8c8a0114efbb948", "subnet-01590d60af76e5917"]

  tags = {
    Name = "my-alb"
  }
}
