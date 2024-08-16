# Public Route Table
resource "aws_route_table" "rtpu" {
  vpc_id = aws_vpc.vp1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gtw1.id
  }
}