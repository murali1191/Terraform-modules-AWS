# create variable of instance_type, instance_name and aminame ec2.tf file for the application 
variable "aminame" {
 
  default     = "amzn2-ami-hvm-*"
}


variable "instancetype" {
  
  default     = "t2.micro"
}

variable "instancename" {
  
  default     = "1st-server"
}








