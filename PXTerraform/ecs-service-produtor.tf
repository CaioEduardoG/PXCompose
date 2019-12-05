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
  }
}
