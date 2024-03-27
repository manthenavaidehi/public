resource "aws_instance" "name"{
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    availability_zone = "us-east-1a"
    tags = {
        Name = "terraform"
    }
}
  
