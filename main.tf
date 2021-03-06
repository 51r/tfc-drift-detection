provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami                    = "ami-0e8040f700cdfdd53"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "terraform-drift-detection-spasov"
  }
}

resource "aws_security_group" "sg" {
  name = "sg_tfc"
  ingress {
    from_port   = "22"
    to_port     = "22"
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
