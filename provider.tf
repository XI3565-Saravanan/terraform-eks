terraform {
 required_providers {
  aws = {
   source = "hashicorp/aws"
  }
 }
  backend "s3" {
    bucket         = "bucket-pfm"
    key            = "terraform/terraform.tfstate"
    region         = "ap-south-1"
    #dynamodb_table = "dynamodb-table"
  }
}


provider "aws" {
  region = var.region
}


