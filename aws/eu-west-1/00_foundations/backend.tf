terraform {
  backend "s3" {
    bucket = "demo-datasquad-terraform-state-backend"
    key = "00_foundations/terraform.tfstate"
    region = "eu-west-1"
  }
}