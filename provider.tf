terraform {
 required_providers {
  aws = {
   source = "hashicorp/aws"
  }
 }
  backend "s3" {
    bucket         = "bcuket-name"
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "dynamodb-table"
  }
}


provider "aws" {
  region = var.region
}

#terraform {
#  backend "s3" {
#    bucket         = "sachin-terraform"
#    key            = "terraform/terraform.tfstate"
#    region         = "us-east-1"
#    dynamodb_table = "terraform-sachin"
#  }
#}
