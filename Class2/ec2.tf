resource "aws_instance" "web" {
  ami           = "ami-c998b6b2"
  instance_type = "t3.micro"
  key_name = aws_key_pair.deployer3.key_name
  availability_zone  = "us-east-1a"
  vpc_security_group_ids = [ aws_security_group.allow_tls33.id ]
}

resource "aws_instance" "web2" {
  # (resource arguments)
}