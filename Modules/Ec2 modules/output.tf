
output "instance_id" {

    value = aws_instance.app_instance.id
  
}

output "value" {
    value = aws_instance.app_instance.ami
    value = aws_instance.app_instance.instance_type
    value = aws_public_ip.app_instance.public_ip
    value = aws_private_ip.app_instance.private_ip

}


