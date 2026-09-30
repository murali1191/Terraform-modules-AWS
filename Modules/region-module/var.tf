# create variable file for region.tf file the application with default rules
variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-west-2"
}   

variable "instancetype" {
  description = "The instance type for the EC2 instance"
  default     = "t2.nano"
}   

variable "instancename" {
  description = "The name tag for the EC2 instance"
  default     = "my-ec2-instance"
}   

variable "aminame" {
  description = "The name of the AMI to use"
  default     = "amzn2-ami-hvm-*"
}   

variable "bucket_name" {
  description = "The name of the S3 bucket"
  default     = "my-app-bucket-1432"
}   

variable "port" {
    description = "The port to allow in the security group"
    default     = 8989
}