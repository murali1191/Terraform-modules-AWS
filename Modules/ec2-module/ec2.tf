# create ec2 instance for the application with default rules
# create data source for the amazon owner ami name

data "aws_ami" "my-ami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = [var.aminame]
  }
}

resource "aws_instance" "myec2" {    
    
  ami           = var.aminame
  instance_type = var.instancetype
  instance_name = var.instancename

  tags = {
    Name = var.instancename  
  }
}
