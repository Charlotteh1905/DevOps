output "s3_bucket_name" {
  value       = "charlotteh-tofu-state"  # Remplace par le nom exact de ton bucket S3
  description = "The name of the existing S3 bucket"
}

output "dynamodb_table_name" {
  value       = "OpenTofuLockTable"  # Remplace par le nom exact de ta table DynamoDB
  description = "The name of the existing DynamoDB table"
}
