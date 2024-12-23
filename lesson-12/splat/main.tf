terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "splat_lab" {
  ami           = "ami-0021ca1c84e982559"
  instance_type = "t2.micro"

  # Add your block devices here!
  
  tags = {
    Name = "Splat-Lab"
  }
}