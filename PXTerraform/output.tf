output "sqs_id_colaboradores" {
  value = "${aws_sqs_queue.colaboradores_queue.id}"
  description = "ID da fila Colaboradores"
}
output "sqs_arn_colaboradores" {
  value = "${aws_sqs_queue.colaboradores_queue.arn}"
  description = "ARN da fila Colaboradores"
}
output "dynamodb_name_colaboradores_table" {
  value = "${aws_dynamodb_table.colaboradores_table.name}"
  description = "Nome da Tabela do DynamoDB"
}
output "ecr_arn_projetox" {
  value = "${aws_ecr_repository.repositorio_containers.arn}"
  description = "ARN do repositorio de containers (ECR)"
}
output "ecr_name_projetox" {
  value = "${aws_ecr_repository.repositorio_containers.name}"
  description = "Nome do repositorio de containers (ECR)"
}
output "ecr_repository_url_projetox" {
  value = "${aws_ecr_repository.repositorio_containers.repository_url}"
  description = "URL do repositorio de containers (ECR)"
}