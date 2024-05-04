terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.47.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-s3"
    key = "roboshop_project"  // any user defined key
    region = "us-east-1"
    dynamodb_table = "roboshop-Dydb"
}
}

provider "aws" {
   region = "us-east-1"
}