resource "aws_route53_record" "test" {
  zone_id = "ZVFBE5NWUNXEY"
  name    = "test.enverguner.com"
  type    = "A"
  ttl     = "30"
  records = [aws_instance.web.public_ip]
}