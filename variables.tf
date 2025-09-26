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