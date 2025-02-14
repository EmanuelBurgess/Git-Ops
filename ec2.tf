data "template_file" "ec2_user_data" {
  template = file("${path.module}/installapache.sh")
}

resource "aws_instance" "webserver1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  availability_zone           = var.az_zone_1
  vpc_security_group_ids      = [aws_security_group.sg01.id]
  subnet_id                   = aws_subnet.pub1.id
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = var.ec2_1_tagname
  }
}

resource "aws_instance" "webserver2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  availability_zone           = var.az_zone_2
  vpc_security_group_ids      = [aws_security_group.sg01.id]
  subnet_id                   = aws_subnet.pub2.id
  user_data                   = data.template_file.ec2_user_data.template

  tags = {
    Name = var.ec2_2_tagname
  }
}