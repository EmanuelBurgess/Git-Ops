resource "aws_security_group" "sg01" {
  name        = var.sg01
  description = var.sg_description01
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = var.sg_tagname01
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_traffic_on_port_443" {
  security_group_id = aws_security_group.sg01.id
  cidr_ipv4         = var.sg_cidrblock443
  from_port         = 443
  ip_protocol       = var.ip_443
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "allow_traffic_on_port_22" {
  security_group_id = aws_security_group.sg01.id
  cidr_ipv4         = var.cidr_22
  from_port         = 22
  ip_protocol       = var.ip_22
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_traffic_on_port_80" {
  security_group_id = aws_security_group.sg01.id
  cidr_ipv4         = var.cidr_80
  from_port         = 80
  ip_protocol       = var.ip_80
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "allow_traffic_on_port_80" {
  security_group_id = aws_security_group.sg01.id
  cidr_ipv4         = var.cidr_80
  from_port         = 8080
  ip_protocol       = var.ip_80
  to_port           = 8080
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.sg01.id
  cidr_ipv4         = var.cidr_ipv4
  ip_protocol       = var.ip_ipv4
}