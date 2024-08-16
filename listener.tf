# Listener
resource "aws_lb_listener" "lt1" {
  load_balancer_arn = aws_lb.lb1.arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg1.arn
  }
}
