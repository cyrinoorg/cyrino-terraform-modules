variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for the instance"
}

variable "key_name" {
  description = "Key pair name for SSH access"
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = var.subnet_id

  tags = {
    Name = "Terraform-EC2"
  }
}