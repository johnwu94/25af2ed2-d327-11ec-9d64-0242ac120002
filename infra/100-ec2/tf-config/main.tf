provider "aws" {
  region                  = var.my_region
  shared_credentials_files = var.my_credentials 
  profile                 = var.my_profile

}

terraform {
  backend "remote"{
    organization = "john-module"

    workspaces {
      name = "ec2-module"
    }
  }
}


module "my_ec2_module" {
  source           = "/home/john/simple-sinatra-app/infra/100-ec2/module"
  image            = var.image
  my_instance_type = var.my_instance_type
  instance_qty     = var.instance_qty
  my_ec2_key       = var.my_ec2_key
  vpc_name         = var.vpc_name
  subnet_tag    = var.subnet_tag
  my_subnet_cidr = var.my_subnet_cidr
  my_sg_name     = var.my_sg_name
  my_sg_tag      = var.my_sg_tag
  ports_map_in   = var.ports_map_in
  ports_map_out  = var.ports_map_out

}