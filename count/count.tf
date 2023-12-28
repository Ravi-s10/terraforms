provider "aws" {
region = "us-east-1"
}


resource "aws_iam_user" "lb" {
name = var.names[count.index]
path = "/system"

count = 5


}


variable "names" {

type = list


default = ["prod","test","dev","uat","jenkins"]

}
