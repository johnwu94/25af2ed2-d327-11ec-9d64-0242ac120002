variable "image" {
  type    = string
  default = "ami-07ef508d01f533f5f"
}

variable "vpc_name" {
  type    = string
  default = "default"
}

/* variable "main" {
  type = string
} */

variable "instance_qty" {
  type    = number
  default = 1
}

variable "my_instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_tag" {
  type = object({
    Name = string
  })

}

variable "my_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "my_sg_name" {
  type    = string
  default = "ec2_module"
}

variable "my_sg_tag" {
  type = object({
    Name = string
  })
}

variable "my_ec2_key" {
  type    = string
  default = "t480s"
}

variable "ports_map_in" {
  type = map(list(string))
  default = {
    "22" = ["0.0.0.0/0"]
  }
}

variable "ports_map_out" {
  type = map(list(string))
  default = {
    "0" = ["0.0.0.0/0"]
  }
}