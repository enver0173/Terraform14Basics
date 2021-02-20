resource "aws_eip" "lb" {
  instance = aws_instance.task2.id
  vpc      = true
}