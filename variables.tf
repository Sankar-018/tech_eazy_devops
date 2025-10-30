# AWS Region
variable "aws_region" {
  description = "AWS region where EC2 will be created"
  default     = "ap-south-1"
}

# EC2 Instance type
variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-087d1c9a513324697"
}

# SSH Key settings
variable "key_name" {
  description = "Name of the key pair"
  default     = "terraform-key"
}

variable "public_key_path" {
  description = "Path to your public SSH key"
  default = "/home/sankar-m/.ssh/id_rsa.pub"
}
 

# Tag for environment
variable "stage" {
  description = "Stage of deployment"
  default     = "dev"
}