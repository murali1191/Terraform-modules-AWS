# create s3 bucket for the application with default rules
resource "aws_s3_bucket" "app_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "AppBucket"
    Environment = "Dev"
  }
}   