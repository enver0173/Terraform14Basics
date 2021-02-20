resource "aws_key_pair" "deployer3" {
	key_name = "mykeyNov2020"
	public_key = file("~/.ssh/id_rsa.pub")
}