# prod subnet + route association
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.prod_web
  route_table_id = aws_route_table.prod_public.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.prod_app1
  route_table_id = aws_route_table.prod_private_with_int.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.prod_dbcache
  route_table_id = aws_route_table.prod_private_with_int.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.prod_app2
  route_table_id = aws_route_table.prod_private.id
}

resource "aws_route_table_association" "e" {
  subnet_id      = aws_subnet.prod_db
  route_table_id = aws_route_table.prod_private.id
}