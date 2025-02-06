provider "aws" {
  region = "us-east-2" # Your AWS region
}
module "state" {
  source = "./"
  name   = "YOUR-UNIQUE-BUCKET-NAME" # Replace with a unique name
}