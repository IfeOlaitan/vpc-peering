# prod vpc
resource "aws_vpc" "prod" {
  cidr_block = var.prod_cidr_block

  tags = {
    Name = var.prod_vpc_name
  }
}