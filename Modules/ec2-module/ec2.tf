# create ec2 instance for the application with default rules
# create data source for the amazon owner ami name

data "aws_ami" "myami" {
  most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = [var.aminame]
  }
}

resource "aws_instance" "myec2" {    
    
  ami           = data.aws_ami.myami.id
  instance_type = var.instancetype

  tags = {
    Name = var.instancename  
  }
}
