// subnet

resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.sub_cidr
  tags = {
    Name = "Subnet-01-tf"
  }
}
