provider "aws" {
  region = var.region
}

resource "aws_security_group" "alb_sg" {
  name        = var.alb_sg_name
  description = var.alb_sg_description

  ingress {
    from_port   = var.alb_ingress_port
    to_port     = var.alb_ingress_port
    protocol    = "tcp"
    cidr_blocks = var.alb_cidr_blocks
  }
}

resource "aws_lb" "my_alb" {
  name               = var.alb_name
  internal           = var.alb_internal
  load_balancer_type = var.alb_load_balancer_type

  security_groups = [aws_security_group.alb_sg.id]

  subnets = var.alb_subnets

  tags = var.alb_tags
}
