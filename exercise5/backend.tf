terraform {
  backend "s3" {
    bucket = "terraform-state-dove-instance"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}