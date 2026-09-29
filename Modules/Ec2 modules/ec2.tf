# create ec2 instance for the application with default rules
# create data source for the amazon owner ami name

data "aws_ami" "app_ami" {
  most_recent = true
  owners   = "amazon"

  filter {
    name   = "name"
    values = [var.aminame]
  }
}

resource "aws_instance" "app_instance" {    
    
  ami           = var.aminame
  instance_type = var.instance_type
  instance_name = var.instance_name
  security_groups = [aws_security_group.app_sg.name]

  tags = {
    Name = "AppInstance"
  }
}
