resource "aws_ecs_task_definition" "pxconsumidor" {
  family = "pxconsumidor"
  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "512"
  memory = "1024"
  execution_role_arn = "${aws_iam_role.ecsTaskExecutionRole.arn}"
  container_definitions = <<DEFINITION
  [
    {
      "name": "PXConsumidor",
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
      ],
      "environment": [
        {
          "name": "NODE_ENV",
          "value": "prod"
        },
        {
          "name": "AWS_ACCESS_KEY_ID",
          "value": "${var.aws_access_key_id}"
        },
        {
          "name": "AWS_SECRET_ACCESS_KEY",
          "value": "${var.aws_secret_access_key}"
        },
        {
          "name": "AWS_REGION",
          "value": "${var.aws_region}"
        },
        {
          "name": "NOME_FILA",
          "value": "${var.nome_fila_colaboradores}"
        },
        {
          "name": "NOMETABELA",
          "value": "${var.nome_tabela_colaboradores}"
        }
      ]
    }
  ]
  DEFINITION
}