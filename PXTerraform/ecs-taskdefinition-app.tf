resource "aws_ecs_task_definition" "pxapp" {
  family = "pxapp"
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "512"
  memory = "1024"
  execution_role_arn = "${aws_iam_role.ecsTaskExecutionRole.arn}"
  container_definitions = <<DEFINITION
  [
    {
      "name": "PXApp",
      "network_mode": "awsvpc",
      "image": "nginx",
      "cpu": 512,
      "memory": 1024,
      "essential": true,
      "portMappings": [
        {
          "containerPort": 80,
          "hostPort": 80
        }
      ]
    }
  ]
  DEFINITION
}