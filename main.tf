provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2-instance" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    key_name = "lallya"
    vpc_security_group_ids = "sg-0aaa73e6b0db66be2"
    tags = {
      Name = "janhavi"
    }
}