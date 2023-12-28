provider "aws" {
region = "us-east-1"
}



variable "user" {

default = "ravi"

}

variable "num" {

default = 123

}


output "value" {


value = var.user =="ravi" ? "Hello" : var.num 

}
