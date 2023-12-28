provider "aws" {
region = "us-east-2"
}


data "aws_ami" "my_ami" {

most_recent = true
owners = ["amazon"]

filter {
name = "name"
values = ["amzn2-ami-hvm-*-x86_64-gp2"]

}

}

resource "aws_instance" "ec1" {

ami = data.aws_ami.my_ami.id
instance_type = "t2.micro"

}


