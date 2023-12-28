provider "aws" {

region =                "us-east-1"

                         }
                         
                         
                         
                         
                  locals {
                  in_port = [80,443]
                  out_port =             [80,443]
                 }
                 
                 
                              resource "aws_security_group" "sg" {
                              
                              name = "Allow https"
                                 description = "Allow https trafic"

                                 dynamic "ingress" {
                                  for_each = local.in_port
                                   content  {
                                   to_port = ingress.value
                                   from_port = ingress.value
                                   protocol = "tcp"
                                   cidr_blocks = ["0.0.0.0/0"]
                                   
                                   }
                                   }
                                   }
