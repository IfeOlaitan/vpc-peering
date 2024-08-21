# prod route tables
resource "aws_route_table" "prod_public" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prod_gw.id
  }

  tags = {
    Name = var.prod_public_rt
  }
}

resource "aws_route_table" "prod_private_with_int" {
  vpc_id = aws_vpc.prod.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.prod_nat.id
  }

  tags = {
    Name = var.prod_private_rt_with_int
  }
}

resource "aws_route_table" "prod_private" {
  vpc_id = aws_vpc.prod.id

  tags = {
    Name = var.prod_private_rt
  }
}


# dev route tables
resource "aws_route_table" "dev_public" {
  vpc_id = aws_vpc.dev.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_gw.id
  }

  tags = {
    Name = var.dev_public_rt
  }
}

resource "aws_route_table" "dev_private" {
  vpc_id = aws_vpc.dev.id

  tags = {
    Name = var.dev_private_rt
  }
}