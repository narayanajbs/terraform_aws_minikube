terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

   backend "s3" {
    bucket  = "terraform-s3-buck"
    encrypt = true
    region = "us-east-1"
    dynamodb_table = "terraform_Dydb"
    key            = "minikube"  #"foreach"
  }
}
provider "aws" {
  region = "us-east-1"
}