provider "aws" {
region = "us-east-1"


}

resource "aws_instance" "ec2" {

instance_type = "t2.micro"
ami = "ami-02cad064a29d4550c"
}


output "aws_attributes" {

value = aws_instance.ec2[*]
}
