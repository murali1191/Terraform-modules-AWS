# create variable for instance type
variable "instancetype" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}   

# create variable for instance name
variable "instancename" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "my-ec2-instance"
}   

