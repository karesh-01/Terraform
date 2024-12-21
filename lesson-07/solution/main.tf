terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20"
    }
  }

  required_version = ">= 1.2.8"
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "lesson_07" {
  ami           = "ami-0021ca1c84e982559"
  instance_type = "t2.micro"
  tags = {
    Name      = var.instance_name
  }
}
