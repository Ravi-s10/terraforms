provider "aws" {
region = "ap-south-1"
}

resource "aws_eip" "lb" {

domain = "vpc"


}



resource "aws_security_group" "example" {

name = "allow_https"
description = "Allow https traffic"


ingress {

description = "Allow Https from vpc"
from_port = 443
to_port = 443
protocol = "tcp"
cidr_blocks = [aws_eip.lb.public_ip]

}



}

output "ip" {

value = aws_eip.lb[*]

}



