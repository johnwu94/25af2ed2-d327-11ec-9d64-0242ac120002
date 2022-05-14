data "aws_key_pair" "ec2_key" {
  filter {
    name   = "tag:Host"
    values = [ var.my_ec2_key ]

  }
}


data "aws_vpc" "main" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}