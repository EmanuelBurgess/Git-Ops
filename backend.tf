terraform {
  backend "s3" {
    bucket = "eburgessghdemo"
    key    = "terraform/state/terraform.tfstate"
    region = "us-east-1"
  }
}