module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "example-instance"

  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI ID
  instance_type = "t2.micro"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}