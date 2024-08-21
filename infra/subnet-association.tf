# prod subnet + route association
resource "aws_route_table_association" "web" {
  subnet_id      = aws_subnet.prod_web
  route_table_id = aws_route_table.prod_public.id
}

resource "aws_route_table_association" "app1" {
  subnet_id      = aws_subnet.prod_app1
  route_table_id = aws_route_table.prod_private_with_int.id
}

resource "aws_route_table_association" "dbcache" {
  subnet_id      = aws_subnet.prod_dbcache
  route_table_id = aws_route_table.prod_private_with_int.id
}

resource "aws_route_table_association" "app2" {
  subnet_id      = aws_subnet.prod_app2
  route_table_id = aws_route_table.prod_private.id
}

resource "aws_route_table_association" "db" {
  subnet_id      = aws_subnet.prod_db
  route_table_id = aws_route_table.prod_private.id
}


# prod subnet + route association
resource "aws_route_table_association" "web" {
  subnet_id      = aws_subnet.dev_web
  route_table_id = aws_route_table.dev_public.id
}

resource "aws_route_table_association" "db" {
  subnet_id      = aws_subnet.dev_db
  route_table_id = aws_route_table.dev_private.id
}