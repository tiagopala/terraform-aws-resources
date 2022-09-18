# Terraform Configuration
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider Configuration
provider "aws" {
  region = "sa-east-1"
}

# EC2 Instances
resource "aws_instance" "dev" {
  count         = 1
  ami           = "ami-0aca10934d525a6f0"
  instance_type = "t2.micro"
  key_name      = "terraform-kp"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = {
    "Name" = "dev-${count.index}"
  }
}

# EC2 Security Groups
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}