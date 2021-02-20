resource "aws_instance" "task2" {
  ami = "ami-c998b6b2" #i used to AWS Linux bec otherwise i have to start subsribe and so on.
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.test_profile.name
  key_name = "mykeyNov2020"
}