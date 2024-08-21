# prod ec2
resource "aws_instance" "prod-web" {
  ami                         = "ami-07c1b39b7b3d2525d"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.prod_web.id
  key_name                    = "ubuntu-kp"
  vpc_security_group_ids      = [aws_security_group.prod_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "prod-web"
  }
}

resource "aws_instance" "prod-app1" {
  ami           = "ami-07c1b39b7b3d2525d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.prod_app1.id
  key_name      = "ubuntu-kp"
  associate_public_ip_address = false

  tags = {
    Name = "prod-app1"
  }
}

resource "aws_instance" "prod-dbcache" {
  ami           = "ami-07c1b39b7b3d2525d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.prod_dbcache.id
  key_name      = "ubuntu-kp"
  associate_public_ip_address = false

  tags = {
    Name = "prod-dbcache"
  }
}

resource "aws_instance" "prod-app2" {
  ami           = "ami-07c1b39b7b3d2525d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.prod_app2.id
  key_name      = "ubuntu-kp"
  associate_public_ip_address = false

  tags = {
    Name = "prod-app2"
  }
}

resource "aws_instance" "prod-db" {
  ami           = "ami-07c1b39b7b3d2525d"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.prod_db.id
  key_name      = "ubuntu-kp"
  associate_public_ip_address = false

  tags = {
    Name = "prod-db"
  }
}
