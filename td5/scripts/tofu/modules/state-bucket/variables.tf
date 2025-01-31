variable "bucket_name" {
  description = "Nom du bucket S3"
  type        = string
}

variable "dynamodb_table_name" {
  description = "Nom de la table DynamoDB utilisée pour le verrouillage de l'état"
  type        = string
}
