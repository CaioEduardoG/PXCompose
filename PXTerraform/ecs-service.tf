resource "aws_ecs_service" "pxapp" {
  name            = "pxapp"
  cluster         = "${aws_ecs_cluster.cluster_projetox.arn}"
  desired_count   = 1
  task_definition = "${aws_ecs_task_definition.pxapp.arn}"
  launch_type     = "FARGATE"

  network_configuration {
    subnets = [
      "${aws_subnet.subnet1.id}",
      "${aws_subnet.subnet2.id}",
      "${aws_subnet.subnet3.id}",
    ]
    assign_public_ip = true
    security_groups  = ["${aws_security_group.allow_tls.id}"]
  }

  load_balancer {
    target_group_arn = "${aws_lb_target_group.appx.arn}"
    container_name   = "pxapp"
    container_port   = 80
  }
  
  service_registries {
    registry_arn = "${aws_service_discovery_service.dns-pxapp.arn}"
  }

}
resource "aws_ecs_service" "pxconsumidor" {
  name            = "pxconsumidor"
  cluster         = "${aws_ecs_cluster.cluster_projetox.arn}"
  desired_count   = 1
  task_definition = "${aws_ecs_task_definition.pxconsumidor.arn}"
  launch_type     = "FARGATE"

  network_configuration {
    subnets = [
      "${aws_subnet.subnet1.id}",
      "${aws_subnet.subnet2.id}",
      "${aws_subnet.subnet3.id}",
    ]
    assign_public_ip = true
    security_groups  = ["${aws_security_group.allow_tls.id}"]
  }

  load_balancer {
    target_group_arn = "${aws_lb_target_group.consumidorx.arn}"
    container_name   = "pxconsumidor"
    container_port   = 80
  }

  service_registries {
    registry_arn = "${aws_service_discovery_service.dns-pxconsumidor.arn}"
  }

}
resource "aws_ecs_service" "pxprodutor" {
  name            = "pxprodutor"
  cluster         = "${aws_ecs_cluster.cluster_projetox.arn}"
  desired_count   = 1
  task_definition = "${aws_ecs_task_definition.pxprodutor.arn}"
  launch_type     = "FARGATE"

  network_configuration {
    subnets = [
      "${aws_subnet.subnet1.id}",
      "${aws_subnet.subnet2.id}",
      "${aws_subnet.subnet3.id}",
    ]
    assign_public_ip = true
    security_groups  = ["${aws_security_group.allow_tls.id}"]
  }

  load_balancer {
    target_group_arn = "${aws_lb_target_group.produtorx.arn}"
    container_name   = "pxprodutor"
    container_port   = 80
  }

  service_registries {
    registry_arn = "${aws_service_discovery_service.dns-pxprodutor.arn}"
  }

}


