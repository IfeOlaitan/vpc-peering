# prod ec2
resource "aws_instance" "prod-web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.prod_web.id
  key_name                    = var.key_pair
  vpc_security_group_ids      = [aws_security_group.prod_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "prod-web"
  }
}

resource "aws_instance" "prod-app1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.prod_app1.id
  key_name                    = var.key_pair
  associate_public_ip_address = false

  tags = {
    Name = "prod-app1"
  }
}

resource "aws_instance" "prod-dbcache" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.prod_dbcache.id
  key_name                    = var.key_pair
  associate_public_ip_address = false

  tags = {
    Name = "prod-dbcache"
  }
}

resource "aws_instance" "prod-app2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.prod_app2.id
  key_name                    = var.key_pair
  associate_public_ip_address = false

  tags = {
    Name = "prod-app2"
  }
}

resource "aws_instance" "prod-db" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.prod_db.id
  key_name                    = var.key_pair
  associate_public_ip_address = false

  tags = {
    Name = "prod-db"
  }
}


# dev ec2
resource "aws_instance" "dev-web" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.dev_web.id
  key_name                    = var.key_pair
  vpc_security_group_ids      = [aws_security_group.dev_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "dev-web"
  }
}

resource "aws_instance" "dev-db" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.dev_db.id
  key_name                    = var.key_pair
  associate_public_ip_address = false

  tags = {
    Name = "prod-db"
  }
}
