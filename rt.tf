resource "aws_route_table" "routetable1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.rt_cidrblock01
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.rt_name01
  }
}

resource "aws_route_table" "routetable2" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.rt_cidrblock02
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.rt_name02
  }
}