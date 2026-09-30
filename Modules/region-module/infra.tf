# create provider region  for the application with default rules
# create ec2 instance for the application with default rules and data source for the application with default rules
#create s3 bucket for the application with default rules
# create security group for the application with default rules

provider "aws" {
  region = var.region
}   

data "aws_ami" "myami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = [var.aminame]
  }
}   

resource "aws_instance" "myec2one" {    
    
  ami           = data.aws_ami.myami.id
  instance_type = var.instancetype

  tags = {
    Name = var.instancename  
  }
}

resource "aws_s3_bucket" "mybucket1" {
  bucket = var.bucket_name
}   

resource "aws_security_group" "mysg1" {

    name        = "allow tls"
     
    ingress {
        from_port   = var.port
        to_port     = var.port
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }       
}