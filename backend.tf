terraform {
  backend "s3" {
    bucket         = "sample-bucket-vixr"
    key            = "test-pipeline-vixr/server-TF/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "Lock-Files"
    encrypt        = true

  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
