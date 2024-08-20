resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.Region]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-0804e5cd2e9761d23"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}