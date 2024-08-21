# prod subnet + route association
resource "aws_route_table_association" "web" {
  subnet_id      = aws_subnet.prod_web.id
  route_table_id = aws_route_table.prod_public.id
}

resource "aws_route_table_association" "app1" {
  subnet_id      = aws_subnet.prod_app1.id
  route_table_id = aws_route_table.prod_private_with_int.id
}

resource "aws_route_table_association" "dbcache" {
  subnet_id      = aws_subnet.prod_dbcache.id
  route_table_id = aws_route_table.prod_private_with_int.id
}

resource "aws_route_table_association" "app2" {
  subnet_id      = aws_subnet.prod_app2.id
  route_table_id = aws_route_table.prod_private.id
}

resource "aws_route_table_association" "db" {
  subnet_id      = aws_subnet.prod_db.id
  route_table_id = aws_route_table.prod_private.id
}


# prod subnet + route association
resource "aws_route_table_association" "web2" {
  subnet_id      = aws_subnet.dev_web.id
  route_table_id = aws_route_table.dev_public.id
}

resource "aws_route_table_association" "db2" {
  subnet_id      = aws_subnet.dev_db.id
  route_table_id = aws_route_table.dev_private.id
}