terraform {
  backend "s3" {
    bucket = "terraform-state-management-dove"
    key    = "terraform/backend_exercise6"
    region = "us-east-1"
  }
}