# create sg.tf variable file for the application with default rules

variable "sg_name" {
  description = "Name of the security group"
  type        = string
  default     = "my-security-group"
}
