resource "aws_instance" "instance" {
  ami = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-08f41a3b66746e56a"]

  provisioner "remote-exec" {

    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = self.public_ip
    }

    inline = [
      "sudo dnf intall nginx -y",
      "sudo systemctl start nginx"
    ]
  }





}