output "IP" {
    value = aws_instance.web.public_ip
  
}

output "ARN" {
    value = aws_instance.web.arn
  
}

output "DNS" {
    value = aws_instance.web.public_dns
  
}