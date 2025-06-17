resource "aws_instance" "instance" {
  for_each                =  var.instance_types
  ami                     =  "ami-09c813fb71547fc4f"
  instance_type           =  each.value["instance_type"]
  vpc_security_group_ids  =  ["sg-08f41a3b66746e56a"]

  tags = {
    Name = each.key
  }
}

variable "instance_types" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    backend = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t2.micro"
    }

  }
}