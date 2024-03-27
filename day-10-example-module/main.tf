module "ec2_instance" {
  source  = "github.com/terraform-aws-modules/terraform-aws-ec2-instance"

  instance_type          = "t2.micro"
  key_name               = "linux"
  monitoring             = true
}