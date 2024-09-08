# Specify the provider
provider "aws" {
  region = "ap-south-1"  # Choose your preferred region
}

# Create a security group that allows SSH
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Define the EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0e53db6fd757e38c7"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  # Attach security group
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "ExampleInstance"
  }
}

# Output the public IP of the EC2 instance
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
