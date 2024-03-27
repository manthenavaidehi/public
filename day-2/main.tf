resource "aws_vpc""devopes"{
    cidr_block = "10.0.0.0/16"
    tags ={
        Name = "devopes"
    }
}
resource "aws_subnet""devopes"{
    vpc_id = aws_vpc.devopes.id
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "devopes"
    }
}
resource "aws_internet_gateway""devopes"{
    vpc_id = aws_vpc.devopes.id
}
resource "aws_route_table" "devopes"{
    vpc_id = aws_vpc.devopes.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.devopes.id 
    }
}
resource "aws_route_table_association" "devopes" {
    route_table_id = aws_route_table.devopes.id
    subnet_id = aws_subnet.devopes.id
}


  


