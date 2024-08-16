# Load Balancer Sg
resource "aws_security_group" "sg-demo" {
  name        = "alb-sg"
  vpc_id      = aws_vpc.vp1.id
  description = "Allow http"

  # Open Port 80 - http 
  ingress {
    description = "allow http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # Outbound Rule 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    env = "Dev"
  }
  depends_on = [aws_vpc.vp1]
}

# EC2 sg
resource "aws_security_group" "sg-demo1" {
  name        = "web-sg"
  vpc_id      = aws_vpc.vp1.id
  description = "Allow http from load balancer sg"

  # Open Port 80 - http 
  ingress {
    description     = "allow http"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.sg-demo.id]
  }
  # Outbound Rule 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    env = "Dev"
  }
  depends_on = [aws_vpc.vp1, aws_security_group.sg-demo]
}