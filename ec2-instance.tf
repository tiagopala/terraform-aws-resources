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

resource "aws_instance" "dev" {
  count         = 1
  ami           = "ami-0aca10934d525a6f0"
  instance_type = "t2.micro"
  key_name      = "terraformKP"
  tags = {
    "Name" = "dev-${count.index}"
  }
}