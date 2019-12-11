resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Permitir trafego de entrada TLS"
  vpc_id      = "${aws_vpc.vpcmain.id}"

  ingress {
    from_port   = 0
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${aws_vpc.vpcmain.cidr_block}", "0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
