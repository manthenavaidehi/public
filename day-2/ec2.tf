resource "aws_instance""devopes"{
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.devopes.id
    tags = {
        Name = "terraform"
    }
}