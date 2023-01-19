// ec2 creation

resource "aws_instance" "web" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  key_name               = "nvrgn-ec2-key"
  subnet_id              = var.subnet_id
#  vpc_security_group_ids = var.sg_id
  tags = {
    Name = "terraform-ec2"
  }
}

// security groups for ec2

# resource "aws_security_group" "my_sg" {
#   name        = "my_sg"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   ingress {
#     description = "http"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0"]
#   }
#   ingress {
#     description = "ssh"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "my_sg"
#   }
# }