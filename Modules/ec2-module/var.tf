# create variable of instance_type, instance_name and aminame ec2.tf file for the application 
variable "aminame" {
  description = "Name of the AMI"
  type        = string
  default     = "amzn2-ami-hvm-*"
}


variable "instancetype" {
  description = "Type of the instance"
  type        = string
  default     = "t2.micro"
}

variable "instancename" {
  description = "Name of the instance"
  type        = string
  default     = "1st-server"
}








