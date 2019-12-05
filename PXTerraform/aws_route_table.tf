resource "aws_route_table" "route-table" {
  vpc_id = "${aws_vpc.vpcmain.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}
resource "aws_route_table_association" "route-table-association1" {
  subnet_id      = "${aws_subnet.subnet1.id}"
  route_table_id = "${aws_route_table.route-table.id}"
}
resource "aws_route_table_association" "route-table-association2" {
  subnet_id     = "${aws_subnet.subnet2.id}"
  route_table_id = "${aws_route_table.route-table.id}"
}
resource "aws_route_table_association" "route-table-association3" {
  subnet_id     = "${aws_subnet.subnet3.id}"
  route_table_id = "${aws_route_table.route-table.id}"
}