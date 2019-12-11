resource "aws_service_discovery_private_dns_namespace" "dns-projetox" {
  name        = "dns-projetox"
  description = "DNS do ProjetoX"
  vpc         = "${aws_vpc.vpcmain.id}"
}
