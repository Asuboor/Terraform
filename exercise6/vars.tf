variable "Region" {
  default = "us-east-1"
}
variable "ZONE1" {
  default = "us-east-1a"
}
variable "ZONE2" {
  default = "us-east-1b"
}
variable "ZONE3" {
  default = "us-east-1c"
}
variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-0ae8f15ae66fe8cda"
    us-east-2 = "ami-05c3dc660cb6907f0"
  }
}
variable "USER" {
  default = "ec2-user"
}
variable "PUB_KEY" {
  default = "dovekey.pub"
}
variable "PRIV_KEY" {
  default = "dovekey"
}
variable "MYIP" {
  default = "49.206.40.140/32"
}