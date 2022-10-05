terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.31.0"
    }
  }
}

provider "aws" {
  region     = "eu-west-1"
  access_key = "..."
  secret_key = "..."
}



resource "aws_instance" "web" {
  ami           = "ami-0ea0f26a6d50850c5"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
