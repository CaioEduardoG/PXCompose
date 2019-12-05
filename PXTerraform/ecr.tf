resource "aws_ecr_repository" "repositorio_containers" {
  name = "${var.nome_ecr_projetox}"
}