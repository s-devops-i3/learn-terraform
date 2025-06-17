terraform {
  backend "s3" {
    bucket = "shuja-bucket1"
    key    = "stateFile"
    region = "us-east-1"
  }
}
resource "null_resource" "null" {}
