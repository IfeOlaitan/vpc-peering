# prod vpc
resource "aws_vpc" "prod" {
  cidr_block = var.prod_cidr_block

  tags = {
    Name = var.prod_vpc_name
  }
}

# dev vpc
resource "aws_vpc" "dev" {
  cidr_block = var.dev_cidr_block

  tags = {
    Name = var.dev_vpc_name
  }
}