provider "aws" {
  region  = "us-east-1"
  version = "~> 1.22.0"
}

resource "aws_security_group" "prod" {
  name        = "prod"
  description = "Allow all inbound traffic"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}
