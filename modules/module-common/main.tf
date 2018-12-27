# TEST
resource "aws_security_group" "module-common" {
  name        = "module-common"
  description = "Allow all inbound traffic - CHANGE"

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