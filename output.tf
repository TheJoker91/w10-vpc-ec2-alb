# Displaying Load Balancer DNS Name
output "alb_dns_link" {
  value = aws_lb.lb1.dns_name
}