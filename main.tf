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
provider "aws" { // Default Provider
  region = "sa-east-1"
}

provider "aws" { // Specific Provider
  alias  = "us-east-1"
  region = "us-east-1"
  
}