terraform {
    backend "s3"{
        bucket = "statefile-configure"
        key = "terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-state-lock-dynamo"
        encrypt = ture
    }

}