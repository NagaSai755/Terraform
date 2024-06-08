terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "********************"
  secret_key = "*************************"
}
resource "aws_instance" "Terraform" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-1"
  }
}

  resource "aws_eip" "lb" {
    instance = aws_instance.Terraform.id
    domain   = "vpc"
  }
  resource "aws_eip_association" "eip_assoc" {
    instance_id   = aws_instance.Terraform.id
    allocation_id = aws_eip.lb.id
  }
resource "aws_s3_bucket" "example" {
  bucket = "terraform755"

  tags = {
    Name        = "My bucket"
  }
}
