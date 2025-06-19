terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.81.0"
    }
  }
}
resource "aws_instance" "instance" {
  ami     = "ami-09e6f87a47903347c"
  instance_type = var.instance_type
}