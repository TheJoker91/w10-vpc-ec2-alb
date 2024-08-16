# First Attachment 
resource "aws_lb_target_group_attachment" "at1" {
  target_group_arn = aws_lb_target_group.tg1.arn
  target_id        = aws_instance.server1.id
  port             = 80
}

# Second Attachment 
resource "aws_lb_target_group_attachment" "at2" {
  target_group_arn = aws_lb_target_group.tg1.arn
  target_id        = aws_instance.server2.id
  port             = 80
}
