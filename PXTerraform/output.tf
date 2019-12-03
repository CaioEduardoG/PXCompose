output "sqs_id_colaboradores" {
  value = "${aws_sqs_queue.colaboradores_queue.id}"
}
output "sqs_arn_colaboradores" {
  value = "${aws_sqs_queue.colaboradores_queue.arn}"
}

output "sqs_id_associados" {
  value = "${aws_sqs_queue.associados_queue.id}"
}
output "sqs_arn_associados" {
  value = "${aws_sqs_queue.associados_queue.arn}"
}
output "dynamodb_name_colaboradores_table" {
  value = "${aws_dynamodb_table.colaboradores_table.name}"
  description = "Nome da Tabela do DynamoDB"
}