resource "aws_ecs_service" "pxapp" {
  name = "service-pxapp"
  cluster = "${aws_ecs_cluster.cluster_projetox.arn}"
  desired_count = 1
  task_definition = "${aws_ecs_task_definition.pxapp.arn}"
  launch_type = "FARGATE"
  
  network_configuration {
    subnets = [
      "${aws_subnet.subnet1.id}",
      "${aws_subnet.subnet2.id}",
      "${aws_subnet.subnet3.id}",
    ]
    assign_public_ip = true
    security_groups = ["${aws_security_group.allow_tls.id}"]
  }
}

resource "aws_ecs_service" "pxconsumidor" {
  name = "service-consumidor"
  cluster = "${aws_ecs_cluster.cluster_projetox.arn}"
  desired_count = 1
  task_definition = "${aws_ecs_task_definition.pxconsumidor.arn}"
  launch_type = "FARGATE"
  
  network_configuration {
    subnets = [
      "${aws_subnet.subnet1.id}",
      "${aws_subnet.subnet2.id}",
      "${aws_subnet.subnet3.id}",
    ]
    assign_public_ip = true
    security_groups = ["${aws_security_group.allow_tls.id}"]
  }
}

resource "aws_ecs_service" "pxprodutor" {
  name = "service-produtor"
  cluster = "${aws_ecs_cluster.cluster_projetox.arn}"
  desired_count = 1
  task_definition = "${aws_ecs_task_definition.pxprodutor.arn}"
  launch_type = "FARGATE"
  
  network_configuration {
    subnets = [
      "${aws_subnet.subnet1.id}",
      "${aws_subnet.subnet2.id}",
      "${aws_subnet.subnet3.id}",
    ]
    assign_public_ip = true
    security_groups = ["${aws_security_group.allow_tls.id}"]
  }
}


