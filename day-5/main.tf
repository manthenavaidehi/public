provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test" {
  ami = "ami-0d7a109bf30624c99"
  instance_type = "t2.micro"
  tags = {
    Name = "manual ec2"
  }
}

resource "aws_s3_bucket" "devopes" {
  bucket = "bucketmain123" 
  
}