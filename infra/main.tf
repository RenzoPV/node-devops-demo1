provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "app_sg" {
    name = "app-sg"

    ingress { 
        from_port = 5000
        to_port = 5000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "app" {
    ami = "ami-0c02fb55956c7d316" # Amazon Linux 2
    instance_type = "t2.micro"
    security_groups = [aws_security_group.app_sg.name]

    user_data = file("user_data.sh")
}