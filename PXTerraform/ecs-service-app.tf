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
  }
}
