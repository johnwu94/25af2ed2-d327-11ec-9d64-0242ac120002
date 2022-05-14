variable "my_region" {
  type = string
}

variable "my_credentials" {
  type = list(string)
}

variable "my_profile" {
  type = string
}

variable "image" {
  type = string
}

variable "vpc_name" {
  type = string
}

/* variable "main_id" {
  type = string
} */

variable "instance_qty" {
  type = number
}

variable "my_instance_type" {
  type = string
}

variable "subnet_tag" {
  type    = object ({
    Name = string
  })
  
}

variable "my_subnet_cidr" {
  type = string
}

variable "my_sg_name" {
  type = string
}

variable "my_sg_tag" {
    type = object({
    Name   = string

  })
}

variable "my_ec2_key" {
  type = string
}

variable "ports_map_in" {
  type = map(list(string))
}

variable "ports_map_out" {
  type = map(list(string))
}