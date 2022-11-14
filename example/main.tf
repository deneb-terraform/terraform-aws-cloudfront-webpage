terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

// Randon resource
resource "random_string" "random" {
  length  = 10
  special = false
  upper   = false
}

// Basic bucket
resource "aws_s3_bucket" "bucket" {
  bucket = "s3-example-${random_string.random.id}"
  acl    = "private"
  force_destroy = true

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = "AES256"
      }
    }
  }
}

// Cloudfront module
module "cloudfront" {
  source = "../"

  s3_bucket_id              = aws_s3_bucket.bucket.id
  s3_bucket_regional_domain = aws_s3_bucket.bucket.bucket_regional_domain_name
  s3_bucket_arn             = aws_s3_bucket.bucket.arn

  aliases     = ["test.cfwebpage.denebtech.com.ar"]
  domain_name = "denebtech.com.ar"

  client      = "deneb"
  environment = "test"
  region      = "us-west-2"
}