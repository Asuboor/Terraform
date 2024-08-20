provider "aws" {
  region = "us-east-1"
  # access_key = ""
  # secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-0ae8f15ae66fe8cda"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-0804e5cd2e9761d23"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}