# prod subnets
resource "aws_subnet" "prod_web" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.10.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "prod-web"
  }
}

resource "aws_subnet" "prod_app1" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.10.2.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-app1"
  }
}

resource "aws_subnet" "prod_app2" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.10.3.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-app2"
  }
}

resource "aws_subnet" "prod_dbcache" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.10.4.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-dbcache"
  }
}

resource "aws_subnet" "prod_db" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.10.5.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "prod-db"
  }
}


# dev subnets
resource "aws_subnet" "dev_web" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "dev-web"
  }
}

resource "aws_subnet" "dev_db" {
  vpc_id                  = aws_vpc.prod.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "dev-db"
  }
}