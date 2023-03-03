terraform {
  required_version = "0.14.4"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  #profile = "tf001"
  #Para colocar como variável de ambiente eu rodo AWS_ACCESS_KEY_ID=XXXXXXXXXXX AWS_SECRET_ACCESS_KEY=XXXXXXX terraform apply

}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-21938719283798127398712983721873"

  tags = {
    Name        = "My teste bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}