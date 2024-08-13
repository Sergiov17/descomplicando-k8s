resource "aws_s3_bucket" "s3_bucket" {
  bucket = "bucket.blog.data"

  tags = {
    Environment = "${var.environment}"
  }
}