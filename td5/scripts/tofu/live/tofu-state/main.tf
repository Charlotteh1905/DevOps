provider "aws" {
  region = "us-east-2"
}

module "state" {
  source = "github.com/Charlotteh1905/DevOps//td5/scripts/tofu/modules/state-bucket"


  # TODO: fill in your own bucket name!
  name = "charlotteh-tofu-state"
}