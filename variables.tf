variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0c02fb55956c7d316" # Amazon Linux 2 (check AWS for latest in your region)
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "terraform-key" # Replace with your actual key name in AWS
}
