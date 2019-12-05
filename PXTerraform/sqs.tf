resource "aws_sqs_queue" "colaboradores_queue" {
  name = "${var.nome_fila_colaboradores}"
}

