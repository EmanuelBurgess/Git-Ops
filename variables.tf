
variable "region" {
  type        = string
  description = "aws region"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  type        = string
  description = "the cidr block for the vpc"
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  type        = string
  description = "instance tenancy"
  default     = "default"
}

variable "vpc_tag_name" {
  type        = string
  description = "tag name"
  default     = "terraformvpc"
}

variable "cidr_block" {
  type        = string
  description = "subnet_cidrblock"
  default     = "10.0.0.0/24"
}

variable "subnet_az1" {
  type        = string
  description = "availability zone"
  default     = "us-east-1a"
}

variable "subnet_cidrblock" {
  type        = string
  description = "cidr block"
  default     = "10.0.0.0/24"
}

variable "subnet_name2" {
  type        = string
  description = "Terraform subnet name"
  default     = "Terraform-public-02"
}

variable "subnet_name1" {
  type        = string
  description = "subnet_name1"
  default     = "Terraform-public-01"
}

variable "subnet_cidrblock02" {
  type        = string
  description = "Terraform cidrblock02"
  default     = "10.0.1.0/24"
}

variable "subnet_az02" {
  type        = string
  description = "subnet availability zone"
  default     = "us-east-1b"
}

variable "terraform_igw" {
  type        = string
  description = "terraform internet gateway"
  default     = "terraformigw"
}

variable "rt_cidrblock01" {
  type        = string
  description = "routing table cidrblock 01"
  default     = "0.0.0.0/0"
}

variable "rt_name01" {
  type        = string
  description = "routing table tag name01"
  default     = "terraformrt01"
}

variable "rt_cidrblock02" {
  type        = string
  description = "routing table cidrblock02"
  default     = "0.0.0.0/0"
}

variable "rt_name02" {
  type        = string
  description = "routing table tag name02"
  default     = "terraformrt02"
}

variable "sg_name01" {
  type        = string
  description = "security group name01"
  default     = "allow_tls"
}

variable "sg_description01" {
  type        = string
  description = "security group1 description"
  default     = "Allow TLS inbound traffic and all outbound traffic"
}

variable "sg_tagname01" {
  type        = string
  description = "securitygroup01 tag name"
  default     = "securitygroup01"
}

variable "sg01" {
  type        = string
  description = "securitygroup01 tag name"
  default     = "securitygroup01"
}

variable "sg_cidrblock443" {
  type        = string
  description = "securitygroup for port 443"
  default     = "0.0.0.0/0"
}

variable "ip_443" {
  type        = string
  description = "ip for port 443"
  default     = "tcp"
}

variable "cidr_22" {
  type        = string
  description = "cidrblock for port 22 "
  default     = "0.0.0.0/0"
}

variable "ip_22" {
  type        = string
  description = "ip for port 22 "
  default     = "tcp"
}

variable "cidr_80" {
  type        = string
  description = "cidrblock for port 80 "
  default     = "0.0.0.0/0"
}

variable "ip_80" {
  type        = string
  description = "ip for port 80 "
  default     = "tcp"
}

variable "cidr_ipv4" {
  type        = string
  description = "cidrblock for ipv4"
  default     = "0.0.0.0/0"
}

variable "ip_ipv4" {
  type        = string
  description = "ip for ipv4"
  default     = "-1"
}

variable "ami_id" {
  type        = string
  description = "ami id"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "instance_type" {
  type        = string
  description = "instance type"
  default     = "t2.micro"
}

variable "az_zone_1" {
  type        = string
  description = "ec201 az"
  default     = "us-east-1a"
}

variable "ec2_1_tagname" {
  type        = string
  description = "ec2 tag name"
  default     = "terraform-webserver-1"
}

variable "ec202_ami" {
  type        = string
  description = "ec202 ami"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "ec202_type" {
  type        = string
  description = "ec202 instance type"
  default     = "t2.micro"
}

variable "az_zone_2" {
  type        = string
  description = "availability zone 2"
  default     = "us-east-1b"
}

variable "ec2_2_tagname" {
  type        = string
  description = "ec2 tag name"
  default     = "terraform-webserver-2"
}
