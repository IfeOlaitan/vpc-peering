# prod igw
resource "aws_internet_gateway" "prod_gw" {
  vpc_id = aws_vpc.prod.id

  tags = {
    Name = var.prod_igw
  }
}

# dev igw
resource "aws_internet_gateway" "dev_gw" {
  vpc_id = aws_vpc.dev.id

  tags = {
    Name = var.dev_igw
  }
}