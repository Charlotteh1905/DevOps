provider "aws" {
  region = "us-east-2"  # Assure-toi que c'est la bonne région
}

resource "aws_s3_bucket" "state_bucket" {
  bucket = var.bucket_name  # Utilise la variable pour ne pas coder le nom en dur
}

resource "aws_dynamodb_table" "state_lock" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
