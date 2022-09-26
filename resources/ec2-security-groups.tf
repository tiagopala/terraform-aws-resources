# EC2 Security Groups
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "allow_ssh"
  }
}

# EC2 Security Groups
resource "aws_security_group" "allow_ssh_us-east-1" {
  provider    = aws.us-east-1
  name        = "allow_ssh"
  description = "Allow SSH"

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "allow_ssh"
  }
}