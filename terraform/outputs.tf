output "public_ip" {
  value       = aws_instance.server.public_ip
  description = "Public IP of the EC2 instance"
}

output "instance_id" {
  value       = aws_instance.server.id
  description = "ID of the EC2 instance"
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID of the VPC"
}