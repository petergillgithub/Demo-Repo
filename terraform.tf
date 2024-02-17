terraform {
    required_version = "~>1.7.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }

  backend "s3" {
    bucket = "demo-s3-bucket-petergill"
    region = "eu-west-2"
    dynamodb_table = "terraform-dynamodb-demo"
  }
}

