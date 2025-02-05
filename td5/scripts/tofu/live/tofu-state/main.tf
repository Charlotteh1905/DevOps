provider "aws" {
  region = "us-east-2"
}

module "state" {
  source = "git::https://github.com/Charlotteh1905/DevOps.git"


  # TODO: fill in your own bucket name!
  name = "charlotteh-tofu-state"
}