resource "aws_instance" "test" {
    ami = ""
    instance_type = "t2.micro"
    key_name = "linux"
  
}


resource "aws_s3_bucket" "test" {
    bucket = "asdfghjkltyui"
    depends_on = [ aws_instance.test ]
  
}