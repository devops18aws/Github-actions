terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "praneeth-tf-github-actions-20260920-847293"

  tags = {
    Name        = "Terraform-GitHub-Actions"
    Environment = "Dev"
  }
}
