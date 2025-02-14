resource "aws_route_table_association" "a01" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.routetable1.id
}

resource "aws_route_table_association" "a02" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.routetable2.id
}