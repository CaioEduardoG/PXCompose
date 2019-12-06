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
      "image": "366283639950.dkr.ecr.us-east-2.amazonaws.com/projetox:web",
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
      "image": "366283639950.dkr.ecr.us-east-2.amazonaws.com/projetox:consumidor",
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

resource "aws_ecs_task_definition" "pxprodutor" {
  family                   = "pxprodutor"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu = "512"
  memory = "1024"
  execution_role_arn = "${aws_iam_role.ecsTaskExecutionRole.arn}"
  container_definitions    = <<DEFINITION
  [
    {
      "name": "PXProdutor",
      "network_mode": "awsvpc",
      "image": "366283639950.dkr.ecr.us-east-2.amazonaws.com/projetox:produtor",
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
        },
        {
          "name": "PORT",
          "value": "80"
        }
      ]
    }
  ]
  DEFINITION
}
