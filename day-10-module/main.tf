module "dev"{
    source = "../day-4"
    ami_id = "ami-0d7a109bf30624c99"
    instance_type = "t2.micro"
    key_name = "linux"
    
}  
