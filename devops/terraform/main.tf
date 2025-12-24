terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  default     = "hello-devops"
}

# Get latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Create VPC
resource "aws_vpc" "hello_devops_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "hello-devops-vpc"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "hello_devops_igw" {
  vpc_id = aws_vpc.hello_devops_vpc.id

  tags = {
    Name = "hello-devops-igw"
  }
}

# Create subnet
resource "aws_subnet" "hello_devops_subnet" {
  vpc_id                  = aws_vpc.hello_devops_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "hello-devops-subnet"
  }
}

# Get availability zones
data "aws_availability_zones" "available" {
  state = "available"
}

# Create route table
resource "aws_route_table" "hello_devops_rt" {
  vpc_id = aws_vpc.hello_devops_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.hello_devops_igw.id
  }

  tags = {
    Name = "hello-devops-rt"
  }
}

# Associate route table with subnet
resource "aws_route_table_association" "hello_devops_rta" {
  subnet_id      = aws_subnet.hello_devops_subnet.id
  route_table_id = aws_route_table.hello_devops_rt.id
}

# Create security group
resource "aws_security_group" "hello_devops_sg" {
  name_prefix = "hello-devops-sg"
  vpc_id      = aws_vpc.hello_devops_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "hello-devops-sg"
  }
}

# Create EC2 instance
resource "aws_instance" "hello_devops" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  key_name              = var.key_name
  vpc_security_group_ids = [aws_security_group.hello_devops_sg.id]
  subnet_id             = aws_subnet.hello_devops_subnet.id

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              service docker start
              usermod -a -G docker ec2-user
              
              # Create a simple web server
              echo "<h1>Hello, DevOps World from Terraform!</h1>" > /var/www/hello.html
              
              # Run a simple HTTP server
              docker run -d -p 80:80 -v /var/www:/usr/share/nginx/html:ro nginx
              
              echo "Hello DevOps World from Terraform!" > /tmp/hello-devops.txt
              echo "$(date): Server started" >> /var/log/hello-devops.log
              EOF

  tags = {
    Name = var.instance_name
  }
}

variable "key_name" {
  description = "AWS Key Pair name for SSH access"
  type        = string
  default     = ""
}

# Outputs
output "instance_public_ip" {
  description = "Public IP of the Hello DevOps instance"
  value       = aws_instance.hello_devops.public_ip
}

output "instance_public_dns" {
  description = "Public DNS of the Hello DevOps instance"
  value       = aws_instance.hello_devops.public_dns
}

output "hello_devops_url" {
  description = "URL to access Hello DevOps"
  value       = "http://${aws_instance.hello_devops.public_ip}"
}