my_region = "ap-southeast-2"

my_credentials = ["/home/john/.aws/credentials"]

my_profile = "johnvic001"

image = "ami-0b7dcd6e6fd797935" #utuntu20.04  sydney

vpc_name = "default"

instance_qty = 1

my_instance_type = "t2.micro"

subnet_tag = {
  Name = "ec2_module"
}

my_subnet_cidr = "172.31.48.0/20"

my_sg_name = "ec2_module"

my_sg_tag = {
  Name = "ruby"
}

my_ec2_key = "t480s"

ports_map_in = {
  "22" = ["0.0.0.0/0"]

}
ports_map_out = {
  "0" = ["0.0.0.0/0"]
}