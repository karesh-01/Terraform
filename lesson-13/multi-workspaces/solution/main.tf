terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }

  required_version = ">= 1.4.6"
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "workspace_testing" {
  ami           = "ami-0021ca1c84e982559"
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}