# Route And Private Subnet Association
resource "aws_route_table_association" "rta3" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.rtpri.id
}
resource "aws_route_table_association" "rta4" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.rtpri.id
}