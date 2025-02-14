resource "aws_subnet" "pub1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidrblock
  availability_zone = var.subnet_az1

  tags = {
    Name = var.subnet_name1
  }
}

resource "aws_subnet" "pub2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidrblock02
  availability_zone = var.subnet_az02

  tags = {
    Name = var.subnet_name2
  }
}