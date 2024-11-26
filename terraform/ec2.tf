resource "aws_instance" "server" {
  ami           = "ami-0c7217cdde317cfec"  # Ubuntu 22.04 LTS em us-east-1
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  
  vpc_security_group_ids = [aws_security_group.instance.id]
  
  root_block_device {
    volume_size = 100
    volume_type = "gp3"
  }

  tags = {
    Name        = "${var.environment}-server"
    Environment = var.environment
  }

  key_name = var.key_name
}