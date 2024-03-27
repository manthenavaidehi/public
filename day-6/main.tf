resource "aws_instance" "dev" {
    ami = data.aws_ami.amalinux.id
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.dev.id
    security_groups = [data.aws_security_group.dev.id]

    tags = {
        name = "dev-ec2"
    }
  
}