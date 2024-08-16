# Creating VPC
resource "aws_vpc" "vp1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "elb-vpc"
    Team = "wdp"
    env  = "dev"
  }
}