# prod route tables
resource "aws_default_route_table" "prod" {
  default_route_table_id = aws_vpc.prod.default_route_table_id

    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.prod_gw.id
    }

  tags = {
    Name = var.prod_public_rt
  }
}

resource "aws_route_table" "prod" {
  vpc_id = aws_vpc.prod.id

  #  route {
  #    cidr_block = "10.0.1.0/24"
  #    gateway_id = aws_internet_gateway.example.id
  #  }

  tags = {
    Name = var.prod_private_rt_with_int
  }
}

resource "aws_route_table" "prod" {
  vpc_id = aws_vpc.prod.id

  #  route {
  #    cidr_block = "10.0.1.0/24"
  #    gateway_id = aws_internet_gateway.example.id
  #  }

  tags = {
    Name = var.prod_private_rt
  }
}