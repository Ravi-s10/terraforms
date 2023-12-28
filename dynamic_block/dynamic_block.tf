provider "aws" {
region = "us-east-2"
}


locals {

inbound_ports = [80,443]
outbound_ports = [443,8080]

}

resource "aws_security_group" "my-sg" {

name = "webserver"
description   = "Security group for web server"

dynamic "ingess" {

for_each = local.inbound_ports

content {
from_port = ingress.value
to_port = ingress.value
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
}

dynamic "engress" {
 for_each = local.outbound

content = {

to_port = egress.value
from_port  = egress.value
protocol = "tcp"
cidr_blocks = ["172.10.15.0/32"]

}
}
}
