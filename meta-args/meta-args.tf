provider "aws" {
region = "us-west-2"
}




data "aws_ami" "AMI" {
most_recent = true
owners = ["amazon"]

filter {
name = "name"
values = ["amzn2-ami-hvm-*-x86_64-gp2"]

}
}


resource "aws_instance" "my-instance" {

ami = data.aws_ami.AMI.id
instance_type = "t2.micro"


tags = {

"name" = "jenkins"
}


lifecycle  {

ignore_changes = [tags]
create_before_destroy = true
prevent_destroy = true

}
}


