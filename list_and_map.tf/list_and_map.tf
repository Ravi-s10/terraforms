provider "aws" {
region = "us-east-1"
}


variable "list_var" {


type = list

default = ["k8s","host","jenkins"]
}


variable "map_var" {
type = map
default = {
"type" = "t2.micro"
"region" = "oragan"

}
}

resource "aws_instance" "my_ec2" {


ami  = "ami-02cad064a29d4550c"
tenancy = var.list_var[1]
instance_type = var.map_var["type"]


}
