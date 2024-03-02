# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "dar-terraform-15-remote"
    key            = "rentzone-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-cicd-state-lock"
  }
}
