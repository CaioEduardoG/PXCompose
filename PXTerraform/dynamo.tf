resource "aws_dynamodb_table" "colaboradores_table" {
  name = "${var.nome_tabela_colaboradores}"
  hash_key = "Email"
  billing_mode = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  attribute {
    name = "Email"
    type = "S"
  }
}