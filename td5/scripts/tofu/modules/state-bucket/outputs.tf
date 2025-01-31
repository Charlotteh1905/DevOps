output "bucket_name" {
  description = "Nom du bucket S3"
  value       = aws_s3_bucket.state_bucket.id
}

output "dynamodb_table_name" {
  description = "Nom de la table DynamoDB"
  value       = aws_dynamodb_table.state_lock.name
}
