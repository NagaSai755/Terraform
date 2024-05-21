provider "aws" {
  region     = "ap-south-1"
  access_key = "******************"
  secret_key = "*****************************"
}

resource "aws_instance" "Terraform_EC2" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-1"
  }
}



Note : Access key and secrat key are used to authenticate the AWS user, hence
the information is sensitive.
