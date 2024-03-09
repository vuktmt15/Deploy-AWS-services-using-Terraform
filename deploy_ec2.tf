provider "aws" {
  region = "ap-southeast-1"
  # access_key = ""
  # secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-001440bcc4ddffcf1"
  instance_type          = "t2.micro"
  availability_zone      = "ap-southeast-1a"
  key_name               = "keypb"
  vpc_security_group_ids = ["sg-06bc83b8fae8e9aac"]
  tags = {
    Name = "Instance Example"
  }
}
