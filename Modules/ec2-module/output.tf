
output "instance_id" {

    value = aws_instance.myec2.id
  
}


output "instance_name" {

    value = aws_instance.myec2.tags["Name"]
  
}
