# create ec2 instance for the application with default rules
# create data source for the amazon owner ami name

data "aws_ami" "myami" {
  most_recent = true
  owners   = ["amazon"]

  filter {
    name   = "name"
    values = [var.aminame]
  }
}

resource "aws_instance" "myec2" {    
    
  ami           = var.aminame
  instance_type = var.instance_type
  instance_name = var.instance_name

  tags = {
    Name = "AppInstance"
  }
}
