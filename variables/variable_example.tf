provider "aws" {
region = "us-east-1"

}


output "user" {

value = var.username

}

output "pass" {

value = var.password 
}
