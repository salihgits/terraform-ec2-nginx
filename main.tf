provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data     = file("user_data.sh")

  tags = {
    Name = "TerraformEC2Web"
  }

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true
}

resource "aws_security_group" "web_sg" {
  name_prefix = "terraform-web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
