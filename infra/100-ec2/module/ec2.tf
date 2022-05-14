resource "aws_instance" "my_instance" {
    ami=var.image
    instance_type = var.my_instance_type
    count= var.instance_qty
    key_name = data.aws_key_pair.ec2_key.key_name
    vpc_security_group_ids = [ aws_security_group.my_sg.id ]
    subnet_id = aws_subnet.main.id
    associate_public_ip_address = true
}


resource "aws_subnet" "main" {
    vpc_id     = data.aws_vpc.main.id
    #vpc_id = data.aws_vpc.main.id
    cidr_block = var.my_subnet_cidr 
    tags = var.subnet_tag
    
}


resource "aws_security_group" "my_sg" {
    name = var.my_sg_name
    vpc_id = data.aws_vpc.main.id
    #vpc_id = var.main_id 
    dynamic "ingress" {
        for_each= var.ports_map_in
        content {
            from_port=ingress.key
            to_port=ingress.key
            protocol = "tcp"
            cidr_blocks = ingress.value
        }
    }

    dynamic "egress"{
        for_each=var.ports_map_out
        content{
            from_port=egress.key
            to_port=egress.key
            protocol="all"
            cidr_blocks = egress.value
        }
    }  

    tags = var.my_sg_tag
}