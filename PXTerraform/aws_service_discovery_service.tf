resource "aws_service_discovery_service" "dns-pxapp" {
  name = "dns-pxapp"

  dns_config {
    namespace_id = "${aws_service_discovery_private_dns_namespace.dns-projetox.id}"

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "MULTIVALUE"
  }
}

resource "aws_service_discovery_service" "dns-pxconsumidor" {
  name = "dns-pxconsumidor"

  dns_config {
    namespace_id = "${aws_service_discovery_private_dns_namespace.dns-projetox.id}"

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "MULTIVALUE"
  }
}

resource "aws_service_discovery_service" "dns-pxprodutor" {
  name = "dns-pxprodutor"

  dns_config {
    namespace_id = "${aws_service_discovery_private_dns_namespace.dns-projetox.id}"

    dns_records {
      ttl  = 10
      type = "A"
    }

    routing_policy = "MULTIVALUE"
  }
}