terraform {
  backend "s3" {
    bucket         = "replace-with-state-bucket"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "replace-with-lock-table"
    encrypt        = true
  }
}
