resource "aws_s3_bucket" "devopes" {
    bucket = "bucketmain123"
}
resource "aws_dynamodb_table""dynamodb_terraform_statelock"{
    name = "terraform_state_lock_dynamo"
    hash_key = "LOCKID"
    read_capacity = 20
    write_capacity = 20
    
    attribute {
      name = "LOCKID"
      type = "S"
    }

}