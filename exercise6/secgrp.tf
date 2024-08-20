# resource "aws_security_group" "dove_stack_sg" {
#   name        = "vpc-stack-sg"
#   description = "Security group for dove ssh"
#   vpc_id      = aws_vpc.dove.id

#   tags = {
#     Name = "allow-ssh"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "dove_stack_sg_ingress" {
#   security_group_id = aws_security_group.dove_stack_sg.id
#   cidr_ipv4         = aws_vpc.dove.cidr_block
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }


# resource "aws_vpc_security_group_egress_rule" "dove_stack_sg_egress" {
#   security_group_id = aws_security_group.dove_stack_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }

resource "aws_security_group" "dove_stack_sg" {
  vpc_id      = aws_vpc.dove.id
  name        = "dove-stack-sg"
  description = "Security Group for dove ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.MYIP]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}