# create s3 bucket for the application with default rules
resource "aws_s3_bucket" "mybucket1" {
  bucket = var.bucket_name
  


  tags = {
    Name        = "AppBucket001"
    Environment = "Dev"
  }
}   