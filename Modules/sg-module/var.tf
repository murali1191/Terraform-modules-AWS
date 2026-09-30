# create sg.tf variable file for the application with default rules

variable "port" {
  type = number
  default     = 8080
}
