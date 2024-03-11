alb_sg_name = "alb-sg"
alb_sg_description = "Security group for ALB"
alb_ingress_port = 80
alb_cidr_blocks = ["0.0.0.0/0"]
alb_name = "my-alb"
alb_internal = false
alb_load_balancer_type = "application"
alb_subnets = ["subnet-0455f6a73f1e2e450", "subnet-0d8c8a0114efbb948", "subnet-01590d60af76e5917"]

alb_tags = {
  Name = "my-alb"
}
