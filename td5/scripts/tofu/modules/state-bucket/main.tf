provider "aws" {
  region = "us-east-2" # Your AWS region
}
module "state" {
  source = "github.com/Charlotteh1905/DevOps//td5/scripts/tofu/modules/state-bucket"
  name   = "YOUR-UNIQUE-BUCKET-NAME" # Replace with a unique name
}