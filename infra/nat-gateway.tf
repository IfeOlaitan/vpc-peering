# prod elastic ip
resource "aws_eip" "prod_eip" {
  domain = "vpc"
}

# prod nat gateway
resource "aws_nat_gateway" "prod_nat" {
  allocation_id = aws_eip.prod_eip.id
  subnet_id     = aws_subnet.prod_web.id
  connectivity_type = "public"

  tags = {
    Name = var.prod_nat
  }
}