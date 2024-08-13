resource "aws_instance" "example" {
  ami           = var.ami_id             # AMI ID of the EC2 instance
  instance_type = var.instance_type      # Type of EC2 instance

  # The security group to allow SSH access
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  # User data script to initialize the instance
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > /home/ec2-user/hello.txt
              EOF

  tags = {
    Name = "TerraformExampleInstance"
  }
}

# Security Group
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH from any IP address (you may want to restrict this in production)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
