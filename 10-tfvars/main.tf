resource "aws_instance" "test_instance" {
  ami                     =  "ami-09c813fb71547fc4f"
  instance_type           =  var.instance_type
  vpc_security_group_ids  =  ["sg-08f41a3b66746e56a"]

  tags = {
    Name = "my-test-instance"
  }
}

