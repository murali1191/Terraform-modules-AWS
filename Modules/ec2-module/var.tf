# create variable of instance_type, instance_name and aminame ec2.tf file for the application 



variable "aminame" {
  description = "AMI name for the EC2 instance"
  type        = string
  default     = "amzn2-ami-ecs-hvm*" # Replace with your desired AMI name
}   

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "my-ec2"
}







