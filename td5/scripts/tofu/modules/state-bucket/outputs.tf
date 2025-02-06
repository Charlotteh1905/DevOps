output "s3_bucket_name" {
  value       = "charlotteh-tofu-state" # Nom exact du S3 bucket utilisé pour le backend
  description = "The name of the S3 bucket used for Terraform state storage"
}

output "dynamodb_table_name" {
  value       = "OpenTofuLockTable" # Nom exact de ta table DynamoDB utilisée pour les verrous
  description = "The name of the DynamoDB table used for state locking"
}
