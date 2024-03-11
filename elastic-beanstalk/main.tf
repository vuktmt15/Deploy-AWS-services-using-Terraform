provider "aws" {
  region = var.aws_region
}

resource "aws_elastic_beanstalk_application" "my_app" {
  name        = var.app_name
  description = "My Elastic Beanstalk Application"
}

resource "aws_elastic_beanstalk_environment" "my_environment" {
  name                = var.environment_name
  application         = aws_elastic_beanstalk_application.my_app.name
  solution_stack_name = var.solution_stack

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.instance_type
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = var.min_size
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.max_size
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
}
