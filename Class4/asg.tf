#resource "aws_autoscaling_group" "enverasg" {
#  name                 = "terraform-asg-example"
#  launch_configuration = aws_launch_configuration.as_conf.name
#  availability_zones = data.aws_availability_zones.all.names
#  min_size = 1
#  max_size = 2
#  lifecycle {
#    create_before_destroy = true
#  }
#}

resource "aws_autoscaling_group" "example" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity = var.desired_capacity
  max_size         = var.max_size
  min_size         = var.min_size
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.example.id
      }
      override {
        instance_type     = "c4.large"
        weighted_capacity = "1"
      }
      override {
        instance_type     = "c3.large"
        weighted_capacity = "1"
      }
    }
  }
}