module "ec2-test-1" {
  source = "./demo"
  Name   = "test1"
}

module "ec2-test-2" {
  source = "./demo"
  Name   = "test2"
}

output "ec2-test-1" {
  value = module.ec2-test-1
}