terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}
data "aws_instances" "test" {
  instance_tags = {
    Name = "my-test-instance"
  }
}
output "print_id" {
  value = data.aws_instances.test
}

