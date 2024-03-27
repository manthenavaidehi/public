resource "aws_instance" "test" {
    ami= "ami-0c101f26f147fa7fd"
    instance_type = "t2.micro"
    count = 2
    tags = {
      name = "test.${count.index}"
    }
  
}
variable "ami" {
  type    = string
  default = "ami-0c101f26f147fa7fd"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = [ "sandbox_server_two", "sandbox_server_three"]
}

# main.tf
resource "aws_instance" "sandbox" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = length(var.sandboxes)

  tags = {
    Name = var.sandboxes[count.index]
  }
}
