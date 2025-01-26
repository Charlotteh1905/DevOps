provider "aws" {
  region = "us-east-2"
}

module "sample_app" {
  source = "github.com/Charlotteh1905/DevOps.git"

  # TODO: fill in with your own AMI ID!
  ami_id = "ami-0ae15180e4172319b"

  name = "sample-app-from-github"
}


