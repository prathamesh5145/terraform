provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2-instance" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    key_name = "lallya"
    vpc_security_group_ids = ["sg-0aaa73e6b0db66be2"]
    tags = {
      Name = "janhavi"
    }
}
resource "aws_security_group" "sg" {
    vpc_id = "vpc-03b2fa3150bf67007"
    description = "al"
    ingress {
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "TCP"
        from_port = 80
        to_port = 80
    }
    egress {
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "TCP"
        from_port = 80
        to_port = 80
    }
}

resource "aws_instance" "ec2-instance1" {
    ami = "ami-0f58b397bc5c1f2e8"
    instance_type = "t2.micro"
    key_name = "lallya"
    vpc_security_group_ids = [aws_security_group.sg.id]
    tags = {
      Name = "janhavi2"
    }
}