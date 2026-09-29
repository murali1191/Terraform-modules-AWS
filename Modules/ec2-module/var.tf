# create variable of instance_type, instance_name and aminame ec2.tf file for the application 



variable "ec2_instance" {
  type        = object({
    region        = string
    instancetype = string
    instancename = string
    aminame       = string
  })
  default     = {
    region        = "us-east-1"
    instancetype = "t2.micro"
    instancename = "my-ec2"
    aminame       = "amzn2-ami-hvm-*--x86_64-gp2"
  }
}








