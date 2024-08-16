# Creating Load Balancer
resource "aws_lb" "lb1" {
  name                       = "alb-project"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.sg-demo.id]
  subnets                    = [aws_subnet.public1.id, aws_subnet.public2.id]
  enable_deletion_protection = false
}