# create variable file for s3.tf file the application with default rules
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "my-app-bucket-143"
}   