resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dovekey.pub")
}

resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.Region]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-0804e5cd2e9761d23"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove-Terraform"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo bash /tmp/web.sh"
    ]
  }


  connection {
    user        = var.USER
    private_key = file("dovekey")
    host        = self.public_ip
  }
}