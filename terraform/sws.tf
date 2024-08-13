resource "aws_sqs_queue" "sqs-blog" {
  name = "sqs-posts"
  delay_seconds = 90
  tags = {
    Environment = "${var.environment}"
  }
}