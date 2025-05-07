# Configure your cloud provider (example uses AWS but adjust for your provider)
provider "aws" {
  region = "us-east-1"
}

# RedHat VM (r9.local)
resource "aws_instance" "r9" {
  ami           = "ami-0c15e602d3d6c6c4a" # RedHat 9 AMI
  instance_type = "t2.micro"
  key_name      = var.public_key

  tags = {
    Name = "r9.local"
  }

  user_data = <<-EOF
              #!/bin/bash
              hostnamectl set-hostname r9.local
              EOF
}

# Debian VM (d12.local)
resource "aws_instance" "d12" {
  ami           = "ami-0779caf41f9ba54f0" # Debian 12 AMI
  instance_type = "t2.micro"
  key_name      = var.public_key

  tags = {
    Name = "d12.local"
  }

  user_data = <<-EOF
              #!/bin/bash
              hostnamectl set-hostname d12.local
              EOF
}

# Output IP addresses for Ansible inventory
output "r9_ip" {
  value = aws_instance.r9.public_ip
}

output "d12_ip" {
  value = aws_instance.d12.public_ip
}
