terraform {
  backend "s3" {
    # TODO: fill in your own bucket name here!
    bucket         = "charlotteh-tofu-state" 
    key            = "ch5/tofu/live/tofu-state"          
    region         = "us-east-2"                         
    encrypt        = true                                
    # TODO: fill in your own DynamoDB table name here!
    dynamodb_table = "OpenTofuLockTable" 
  }
}