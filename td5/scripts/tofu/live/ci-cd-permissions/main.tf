provider "aws" {
  region = "us-east-2"
}

module "oidc_provider" {
  source = "/Users/charlottehernu/devops_base/td5/scripts/tofu/modules/github-aws-oidc"

  provider_url = "https://token.actions.githubusercontent.com" 

}

module "iam_roles" {
  source = "/Users/charlottehernu/devops_base/td5/scripts/tofu/modules/gh-actions-iam-roles"

  name              = "lambda-sample"
  oidc_provider_arn = module.oidc_provider.oidc_provider_arn

  enable_iam_role_for_testing = true
  enable_iam_role_for_plan     = true
  enable_iam_role_for_apply    = true

  github_repo      = "Charlotteh1905/DevOps"
  lambda_base_name = "lambda-sample"

  tofu_state_bucket         = "charlotteh-tofu-state"
  tofu_state_dynamodb_table = "OpenTofuLockTable"
}


