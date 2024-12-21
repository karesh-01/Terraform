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

resource "aws_instance" "count_lab" {
  count         = 2
  ami           = "ami-0021ca1c84e982559"
  instance_type = "t2.micro"

  tags = {
    Name = "Count-Lab-${count.index + 1}"
  }
}