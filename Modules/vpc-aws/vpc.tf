# create aws vpc resource for the application with default rules

provider "aws" {
  region = "us-west-2"
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
}   

#creAte aws subnet resource for the application with default rules
resource "aws_subnet" "mysubnet" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.0.1.0/24"
}       
#create aws internet gateway resource for the application with default rules
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id
}       

#create aws route table resource for the application with default rules
resource "aws_route_table" "myrt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }
}       

# create aws route table association resource for the application with default rules
resource "aws_route_table_association" "myrta" {
  subnet_id      = aws_subnet.mysubnet.id
  route_table_id = aws_route_table.myrt.id
}   

# create aws security group resource for the application with default rules
resource "aws_security_group" "mysg" {
    name        = "allow tls"
    description = "Security group for the application"
    vpc_id      = aws_vpc.myvpc.id
    
    ingress {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]     
    }
}

#create aws route resource for the application with default rules
resource "aws_route" "myroute" {    
  route_table_id         = aws_route_table.myrt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.myigw.id
}   

#create aws ec2 instance resource for the application with default rules
data "aws_ami" "myami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}   

resource "aws_instance" "myec2" {    
  ami           = data.aws_ami.myami.id
  instance_type = var.instancetype
  subnet_id     = aws_subnet.mysubnet.id
  vpc_security_group_ids = [aws_security_group.mysg.id]

  tags = {
    Name = var.instancename  
  }
}