#resource "aws_launch_configuration" "as_conf" {
#  name          = "web_config"
#  image_id      = data.aws_ami.centos.id
#  instance_type = "t2.micro"
#  user_data = file("userdata.sh")
#  spot_price = "0.5"
#}

  
resource "aws_launch_template" "example" {
  name_prefix   = "example"
  image_id      = data.aws_ami.image.id
  instance_type = "t2.micro"
  key_name      = aws_key_pair.asg-key-pair.key_name
  user_data = filebase64("${path.module}/userdata.sh")
}