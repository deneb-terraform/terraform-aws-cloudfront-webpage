variable "s3_bucket_id" {
  description = "ID of the s3 bucket"
  type        = string
}

variable "s3_bucket_regional_domain" {
  description = "Regional domain of the s3 bucket"
  type        = string
}

variable "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  type        = string
}

variable "aliases" {
  description = "Subdomains of the cloudfront distribution"
  type        = list(string)
}

variable "domain_name" {
  description = "Name of the custom domain"
  type        = string
}

variable "client" {
  description = "Client Name for the S3 that it belongs to"
  type        = string
}

variable "environment" {
  description = "Resource environment"
  type        = string
}

variable "region" {
  description = "Region of the resources"
  type        = string
}