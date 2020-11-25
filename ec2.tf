resource "aws_instance" "MyfirstEc2" {
   ami="ami-0e306788ff2473ccb"
   instance_type="t2.micro"
   tags = {
     Name  =  "myfirst_inastance"
   }

}

resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "myvpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "mygw"
  }
}