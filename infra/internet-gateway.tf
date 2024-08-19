# prod igw
resource "aws_internet_gateway" "prod_gw" {
  vpc_id = aws_vpc.prod.id

  tags = {
    Name = var.prod_igw
  }
}