# Server1
resource "aws_instance" "server1" {
  instance_type          = "t2.micro"
  ami                    = "ami-0c8e23f950c7725b9"
  user_data              = file("setup.sh")
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  subnet_id              = aws_subnet.private1.id
  availability_zone      = "us-east-1a"
  tags = {
    Name = "web1"
  }
}

# Server2
resource "aws_instance" "server2" {
  instance_type          = "t2.micro"
  ami                    = "ami-0c8e23f950c7725b9"
  user_data              = file("setup.sh")
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  subnet_id              = aws_subnet.private2.id
  availability_zone      = "us-east-1b"
  tags = {
    Name = "web2"
  }
}