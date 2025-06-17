resource "aws_instance" "test_instance" {
  ami                     =  "ami-09c813fb71547fc4f"
  instance_type           =  "t3.micro"
  vpc_security_group_ids  =  ["sg-08f41a3b66746e56a"]

  tags = {
    Name = "my_test_instance"
  }
}
